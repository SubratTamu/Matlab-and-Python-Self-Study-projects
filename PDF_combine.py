import PyPDF2

file1 = open("Transcripts.pdf", "rb")
file2 = open("GPA calculation.pdf", "rb")
# file3 = open("Feb2021_salary slip.pdf", "rb")
# file4 = open("Last 6 month bank statement.pdf", "rb")

reader1 = PyPDF2.PdfFileReader(file1)
reader2 = PyPDF2.PdfFileReader(file2)
# reader3 = PyPDF2.PdfFileReader(file3)
# reader4 = PyPDF2.PdfFileReader(file4)

writer = PyPDF2.PdfFileWriter()

for page in range(reader1.numPages):
    pageobj = reader1.getPage(page)
    writer.addPage(pageobj)

for page in range(reader2.numPages):
    pageobj = reader2.getPage(page)
    writer.addPage(pageobj)

# for page in range(reader3.numPages):
#     pageobj = reader3.getPage(page)
#     writer.addPage(pageobj)
#
# for page in range(reader4.numPages):
#     pageobj = reader4.getPage(page)
#     writer.addPage(pageobj)

output = open("Transcript_with_GPA_conversion.pdf", "wb")
writer.write(output)

output.close()
file1.close()
file2.close()
# file3.close()
# file4.close()
