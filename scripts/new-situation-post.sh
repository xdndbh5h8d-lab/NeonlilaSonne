#!/usr/bin/env bash
set -euo pipefail

# ⚙️ Konfiguration
TEMPLATE="_postbysituation.md"
POSTS_DIR="_posts"
NOW=$(date +"%Y-%m-%d %H:%M:%S %z")
DATE_ONLY=$(date +"%Y-%m-%d")

# 📝 Eingabe prüfen
if [[ $# -eq 0 ]]; then
  echo "📌 Nutzung: $0 <Titel-mit-Bindestrichen>"
  echo "   Beispiel: $0 ueberforderung-und-grenzen"
  exit 1
fi

# 🔤 Slug generieren (klein, Bindestriche, keine Sonderzeichen)
SLUG="${1,,}"
SLUG="${SLUG// /-}"
SLUG=$(echo "$SLUG" | sed 's/[^a-z0-9-]//g')

FILE="$POSTS_DIR/$DATE_ONLY-$SLUG.md"

# 📁 Vorhandensein prüfen
[[ -f "$TEMPLATE" ]] || { echo "❌ Vorlage '$TEMPLATE' nicht gefunden."; exit 1; }
mkdir -p "$POSTS_DIR"

# 📄 Datei erstellen
cp "$TEMPLATE" "$FILE"

# 🔄 Front-Matter aktualisieren (perl ist macOS/Linux/WSL kompatibel)
perl -pi -e "s/^title: .*/title: \"$1\"/" "$FILE"
perl -pi -e "s/^date: .*/date: $NOW/" "$FILE"

# 🎉 Fertig
echo "✅ Post erstellt: $FILE"
echo "📝 Öffne Editor..."
${EDITOR:-code} "$FILE"
