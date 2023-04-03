 
CREATE TABLE [dbo].[PDF_Attachment](
	[qa_event_item_code_c] [int] NULL,
	[file_name] [varchar](50) NULL,
	[blobContent] [varbinary](max) NULL,
	[filename__v] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];

  INSERT INTO PDF_Attachment (blobContent) SELECT * FROM OPENROWSET(BULK 'C:/AMW_HOME/CCS/RDBMS/Extraction/SamplePdf.pdf', SINGLE_BLOB) AS BLOB
