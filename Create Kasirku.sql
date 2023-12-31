USE [Kasirku]
GO
/****** Object:  Table [dbo].[barang]    Script Date: 10/21/2019 8:13:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[barang](
	[kode_brg] [varchar](20) NOT NULL,
	[nama_brg] [varchar](100) NULL,
	[satuan_brg] [varchar](20) NULL,
	[hrg_beli] [money] NULL,
	[hrg_jual] [money] NULL,
	[diskon] [money] NULL,
 CONSTRAINT [PK_barang] PRIMARY KEY CLUSTERED 
(
	[kode_brg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detail_pembelian]    Script Date: 10/21/2019 8:13:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detail_pembelian](
	[kode_b] [varchar](50) NOT NULL,
	[tanggal_b] [date] NULL,
	[kode_brg] [varchar](20) NULL,
	[nama_brg] [varchar](100) NULL,
	[satuan_brg] [varchar](20) NULL,
	[hrg_beli] [money] NULL,
	[jumlah] [money] NULL,
	[sub_total] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detail_penjualan]    Script Date: 10/21/2019 8:13:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detail_penjualan](
	[kode_j] [varchar](50) NOT NULL,
	[tanggal_j] [date] NULL,
	[kode_brg] [varchar](20) NULL,
	[nama_brg] [varchar](100) NULL,
	[satuan_brg] [varchar](20) NULL,
	[hrg_jual] [money] NULL,
	[diskon] [money] NULL,
	[jumlah] [money] NULL,
	[sub_total] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[karyawan]    Script Date: 10/21/2019 8:13:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[karyawan](
	[kode_kr] [varchar](12) NOT NULL,
	[nama_kr] [varchar](50) NULL,
	[alamat_kr] [text] NULL,
	[telp_kr] [varchar](15) NULL,
	[tgl_lahir_kr] [date] NULL,
	[jkel_kr] [char](1) NULL,
	[password_kr] [varchar](32) NULL,
 CONSTRAINT [PK_karyawan] PRIMARY KEY CLUSTERED 
(
	[kode_kr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_pembelian]    Script Date: 10/21/2019 8:13:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_pembelian](
	[kode_b] [varchar](50) NOT NULL,
	[tanggal_b] [date] NULL,
	[kode_kr] [varchar](20) NULL,
	[kode_sp] [varchar](20) NULL,
	[do] [varchar](50) NULL,
	[total] [money] NULL,
	[ppn] [money] NULL,
	[grand_total] [money] NULL,
 CONSTRAINT [PK_master_pembelian] PRIMARY KEY CLUSTERED 
(
	[kode_b] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_penjualan]    Script Date: 10/21/2019 8:13:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_penjualan](
	[kode_j] [varchar](50) NOT NULL,
	[tanggal_j] [date] NULL,
	[kode_kr] [varchar](20) NULL,
	[total] [money] NULL,
	[ppn] [money] NULL,
	[grand_total] [money] NULL,
 CONSTRAINT [PK_master_penjualan] PRIMARY KEY CLUSTERED 
(
	[kode_j] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 10/21/2019 8:13:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[kode_sp] [varchar](20) NOT NULL,
	[nama_sp] [varchar](50) NULL,
	[alamat_sp] [varchar](100) NULL,
	[telp_sp] [varchar](15) NULL,
	[nama_perusahaan_sp] [varchar](100) NULL,
	[keterangan_sp] [varchar](200) NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[kode_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
