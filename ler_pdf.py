import PyPDF2

try:
    with open('CamScanner 26-02-2026 14.55.pdf', 'rb') as pdf_file:
        reader = PyPDF2.PdfReader(pdf_file)
        texto_completo = ''
        for page in reader.pages:
            texto_completo += page.extract_text() + '\n'
        print(texto_completo)
except Exception as e:
    print(f"Erro ao ler PDF: {e}")
