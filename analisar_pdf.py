from pdf2image import convert_from_path
from PIL import Image
import PyPDF2

# Tentar extrair informações do PDF
try:
    # Tentar ler como PDF normal
    with open('CamScanner 26-02-2026 14.55.pdf', 'rb') as file:
        pdf_reader = PyPDF2.PdfReader(file)
        print(f"Número de páginas: {len(pdf_reader.pages)}")
        print("\n=== CONTEÚDO DO PDF ===\n")
        
        for i, page in enumerate(pdf_reader.pages):
            text = page.extract_text()
            print(f"--- Página {i+1} ---")
            print(text)
            print("\n")
            
except Exception as e:
    print(f"Erro ao processar PDF: {e}")
