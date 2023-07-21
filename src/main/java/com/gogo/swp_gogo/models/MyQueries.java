package com.gogo.swp_gogo.models;

import java.sql.*;
import java.text.ParseException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;

public class MyQueries {

    private static Connection getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://localhost:1433;database=GoGo;encrypt=false;trustServerCertificate=true";
            Connection connection = DriverManager.getConnection(connectionUrl, "sa", "140801");
            return connection;
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Cannot connect to the database");
            ex.printStackTrace();
        }
        return null;
    }

    public static void addKhachHang(KhachHang khachHang) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.KhachHang(idKhachHang,email,password,hoTenLot,ten,phoneNumber) Values(?,?,?,?,?,?)");
            statement.setString(1, khachHang.getIdKhachHang());
            statement.setString(2, khachHang.getEmail());
            statement.setString(3, khachHang.getPassword());
            statement.setString(4, khachHang.getHoTenLot());
            statement.setString(5, khachHang.getTen());
            statement.setString(6, khachHang.getPhoneNumber());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addNhaXe(NhaXe nhaXe) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.NhaXe(idNhaXe,tenNhaXe,username,password,adminUsername) Values(?,?,?,?,?)");
            statement.setString(1, nhaXe.getIdNhaXe());
            statement.setString(2, nhaXe.getTenNhaXe());
            statement.setString(3, nhaXe.getUsername());
            statement.setString(4, nhaXe.getPassword());
            statement.setString(5, nhaXe.getAdminUsername());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addXe(Xe xe) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.Xe(idXe,moTa,soLuongghe,loaiXe,idNhaXe) Values(?,?,?,?,?)");
            statement.setString(1, xe.getIdXe());
            statement.setString(2, xe.getMoTa());
            statement.setString(3, String.valueOf(xe.getSoLuongGhe()));
            statement.setString(4, xe.getLoaiXe());
            statement.setString(5, xe.getIdNhaXe());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addGheXe(GheXe gheXe) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.GheXe(idGhe,giaGhe,idXe) Values(?,?,?)");
            statement.setString(1, gheXe.getIdGhe());
            statement.setString(2, String.valueOf(gheXe.getGiaGhe()));
            statement.setString(3, gheXe.getIdXe());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addTuyenDuong(TuyenDuong tuyenDuong) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.TuyenDuong(idTuyenDuong,noiBatDau,dichDen) Values(?,?,?)");
            statement.setString(1, tuyenDuong.getIdTuyenDuong());
            statement.setString(2, tuyenDuong.getNoiBatDau());
            statement.setString(3, tuyenDuong.getDichDen());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addNoiDonKhach(DonKhach donKhach) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.DonKhach(idDonKhach,idLoTrinh,noiDonKhach) Values(?,?,?)");
            statement.setString(1, donKhach.getIdDonKhach());
            statement.setString(2, donKhach.getIdLoTrinh());
            statement.setString(3, donKhach.getNoiDonKhach());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addNoiTraKhach(TraKhach traKhach) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.TraKhach(idTraKhach,idLoTrinh,noiTraKhach) Values(?,?,?)");
            statement.setString(1, traKhach.getIdTraKhach());
            statement.setString(2, traKhach.getIdLoTrinh());
            statement.setString(3, traKhach.getNoiTraKhach());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addThoiGianKhoiHanh(ThoiGianKhoiHanh thoiGianKhoiHanh) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.ThoiGianKhoiHanh(idThoiGian,gioKhoiHanh,ngayKhoiHanh) Values(?,?,?)");
            statement.setString(1, thoiGianKhoiHanh.getIdThoiGian());
            statement.setString(2, String.valueOf(thoiGianKhoiHanh.getGioKhoiHanh()));
            statement.setString(3, String.valueOf(thoiGianKhoiHanh.getNgayKhoiHanh()));
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addLoTrinh(LoTrinh loTrinh) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.LoTrinh(idLoTrinh, giaLoTrinh, khoangThoiGianDiChuyen, idXe, idTuyenDuong, idThoiGian, idNhaXe) values (?,?,?,?,?,?,?)");
            statement.setString(1, loTrinh.getIdLoTrinh());
            statement.setInt(2, loTrinh.getGiaLoTrinh());
            statement.setInt(3, loTrinh.getKhoangThoiGianDiChuyen());
            statement.setString(4, loTrinh.getXe().getIdXe());
            statement.setString(5, loTrinh.getTuyenDuong().getIdTuyenDuong());
            statement.setString(6, loTrinh.getThoiGianKhoiHanh().getIdThoiGian());
            statement.setString(7, loTrinh.getNhaXe().getIdNhaXe());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addVeXe(VeXe veXe) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("insert into GoGo.dbo.VeXe(idVe, rating, comment, ngayDatVe, idGhe, idLoTrinh, idKhachHang, idMaGiamGia)  values (?,?,?,?,?,?,?,?);");
            statement.setString(1, veXe.getIdVeXe());
//            statement.setString(2, String.valueOf(veXe.getRating()));
            statement.setString(2, null);
            statement.setString(3, veXe.getComment());
            statement.setString(4, String.valueOf(veXe.getNgayDatVe()));
            statement.setString(5, veXe.getIdGhe());
            statement.setString(6, veXe.getIdLoTrinh());
            statement.setString(7, veXe.getIdKhachHang());
            statement.setString(8, veXe.getIdMaGiamGia());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static TuyenDuong getTuyenDuongExist(String noiBatDau, String dichDen) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Select * from TuyenDuong where noiBatDau = ? and dichDen = ?");
            statement.setString(1, noiBatDau);
            statement.setString(2, dichDen);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new TuyenDuong(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3));
            }
            connection.close();
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static ThoiGianKhoiHanh getThoiGianKhoiHanhExist(LocalDate date, LocalTime time) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Select * from ThoiGianKhoiHanh where ngayKhoiHanh = ? and gioKhoiHanh = ?");
            System.out.println(date.toString());
            System.out.println(time.toString());
            statement.setString(1, date.toString());
            statement.setString(2, time.toString());
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new ThoiGianKhoiHanh(resultSet.getString(1), LocalTime.parse(resultSet.getString("gioKhoiHanh")), LocalDate.parse(resultSet.getString("ngayKhoiHanh")));
            }
            connection.close();
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<String> getAllTableInfo(String col, String table) {
        Connection connection = getConnection();
        List<String> res = new ArrayList<>();
        try {
            String q = "Select " + col + " from GoGo.dbo." + table;
            System.out.println(q);
            PreparedStatement statement = connection.prepareStatement(q);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                res.add(resultSet.getString(1));
            }
            System.out.println(res.size());
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public static String getTableInfoByBase(String base, String col, String data, String table) {
        Connection connection = getConnection();
        try {
            String q = "Select " + col + " from GoGo.dbo." + table + " where " + base + " = ?";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return resultSet.getString(col);
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static KhachHang getKhachHangByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.KhachHang where " + col + " = ?";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new KhachHang(resultSet.getString("idKhachHang"), resultSet.getString("email"), resultSet.getString("phoneNumber"), resultSet.getString("password"), resultSet.getString("hoTenLot"), resultSet.getString("ten"));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static NhaXe getNhaXeByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.NhaXe where " + col + " = ?";
            System.out.println(q);
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new NhaXe(resultSet.getString("idNhaxe"), resultSet.getString("tenNhaXe"), resultSet.getString("username"), resultSet.getString("password"));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static Xe getXeByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.Xe where " + col + " = ?";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new Xe(resultSet.getString("idXe"), resultSet.getString("moTa"), Byte.parseByte(resultSet.getString("soLuongGhe")), resultSet.getString("loaiXe"), resultSet.getString("idNhaXe"));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static GheXe getGheXeByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.GheXe where " + col + " = ?";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new GheXe(resultSet.getString("idGhe"), resultSet.getInt("giaGhe"), resultSet.getString("idXe"));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static TuyenDuong getTuyenDuongByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.TuyenDuong where " + col + " = ?";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new TuyenDuong(resultSet.getString("idTuyenDuong"), resultSet.getString("noiBatDau"), resultSet.getString("dichDen"));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static ThoiGianKhoiHanh getThoiGianKhoiHanhByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.ThoiGianKhoiHanh where " + col + " = ?";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new ThoiGianKhoiHanh(resultSet.getString("idThoiGian"), LocalTime.parse(resultSet.getString("gioKhoiHanh")), LocalDate.parse(resultSet.getString("ngayKhoiHanh")));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static Admin getAdminBy(String col, String data) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Select * from GoGo.dbo.Admin where " + col + " = ?");
            statement.setString(1, data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new Admin(resultSet.getString("username"), resultSet.getString("password"));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }


    public static List<Xe> getAllXeOfOneNhaXeByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.Xe where " + col + " = ?";
            System.out.println(q);
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, data);
            ResultSet resultSet = statement.executeQuery();
            List<Xe> res = new ArrayList<>();
            while (resultSet.next()) {
                res.add(new Xe(resultSet.getString("idXe"), resultSet.getString("moTa"), Byte.parseByte(resultSet.getString("soLuongGhe")), resultSet.getString("loaiXe"), resultSet.getString("idNhaXe")));
            }
            connection.close();
            return res;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static List<NhaXe> getAllNhaXeBasedOn(String col, String data) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Select * from GoGo.dbo.NhaXe where "+col+" = "+" ? ");
            System.out.println("col: "+col+" data: "+data);
            statement.setString(1,data);
            ResultSet resultSet = statement.executeQuery();
            List<NhaXe> res = new ArrayList<>();
            while (resultSet.next()) {
                res.add(new NhaXe(resultSet.getString("idNhaXe"), resultSet.getString("tenNhaXe"), resultSet.getString("username"), resultSet.getString("password"), resultSet.getString("adminUsername")));
            }
            connection.close();
            return res;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<VeXe> getAllVeXeOfOnePasById(String idKH) {
        Connection connection = getConnection();
        try {
            String q = "Select idVe, rating, comment, ngayDatVe, idGhe, vx.idLoTrinh, idKhachHang, idMaGiamGia, tgkh.ngayKhoiHanh, tgkh.gioKhoiHanh, td.noiBatDau, td.dichDen, nx.tenNhaXe\n" +
                    "       from GoGo.dbo.VeXe as vx, GoGo.dbo.ThoiGianKhoiHanh as tgkh, GoGo.dbo.LoTrinh as lt, GoGo.dbo.TuyenDuong as td, GoGo.dbo.NhaXe as nx\n" +
                    "       where idKhachHang = ?\n" +
                    "and vx.idLoTrinh = lt.idLoTrinh\n" +
                    "and lt.idThoiGian = tgkh.idThoiGian\n" +
                    "and lt.idNhaXe = nx.idNhaXe\n" +
                    "and lt.idTuyenDuong = td.idTuyenDuong;";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, idKH);
            ResultSet resultSet = statement.executeQuery();
            List<VeXe> veXeList = new ArrayList<>();
            while (resultSet.next()) {
                int rating;
                try {
                    rating = Integer.parseInt(resultSet.getString("rating"));
                } catch (Exception e) {
                    rating = Integer.parseInt("0");
                }
                VeXe newVeXe = new VeXe(
                        resultSet.getString("idVe"),
                        rating,
                        resultSet.getString("comment"),
                        LocalDate.parse(resultSet.getString("ngayDatVe")),
                        resultSet.getString("idGhe"),
                        resultSet.getString("idLoTrinh"),
                        resultSet.getString("idKhachHang"),
                        resultSet.getString("idMaGiamGia"));
                newVeXe.setNgayKhoiHanh(resultSet.getString("ngayKhoiHanh"));
                newVeXe.setGioKhoiHanh(resultSet.getString("gioKhoiHanh"));
                newVeXe.setTenNhaXe(resultSet.getString("tenNhaXe"));
                newVeXe.setDiemDi(resultSet.getString("noiBatDau"));
                newVeXe.setDiemDen(resultSet.getString("dichDen"));
                veXeList.add(newVeXe);
            }
            connection.close();
            return veXeList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void updateVeXe(VeXe veXe) {
        Connection connection = getConnection();
        try {
            String q = "Update GoGo.dbo.VeXe set rating=?, comment=? where idVe=?";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setInt(1, veXe.getRating());
            statement.setString(2, veXe.getComment());
            statement.setString(3, veXe.getIdVeXe());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static VeXe getVeXeByIdVe(String idVe) {
        Connection connection = getConnection();
        try {
            String q = "Select idVe, rating, comment, ngayDatVe, idGhe, vx.idLoTrinh, idKhachHang, idMaGiamGia, tgkh.ngayKhoiHanh, tgkh.gioKhoiHanh, td.noiBatDau, td.dichDen, nx.idNhaXe, nx.tenNhaXe\n" +
                    "       from GoGo.dbo.VeXe as vx, GoGo.dbo.ThoiGianKhoiHanh as tgkh, GoGo.dbo.LoTrinh as lt, GoGo.dbo.TuyenDuong as td, GoGo.dbo.NhaXe as nx\n" +
                    "       where idVe = ?\n" +
                    "and vx.idLoTrinh = lt.idLoTrinh\n" +
                    "and lt.idThoiGian = tgkh.idThoiGian\n" +
                    "and lt.idNhaXe = nx.idNhaXe\n" +
                    "and lt.idTuyenDuong = td.idTuyenDuong;";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1, idVe);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int rating;
                try {
                    rating = Integer.parseInt(resultSet.getString("rating"));
                } catch (Exception e) {
                    rating = Integer.parseInt("0");
                }
                VeXe veXe = new VeXe(
                        resultSet.getString("idVe"),
                        rating,
                        resultSet.getString("comment"),
                        LocalDate.parse(resultSet.getString("ngayDatVe")),
                        resultSet.getString("idGhe"),
                        resultSet.getString("idLoTrinh"),
                        resultSet.getString("idKhachHang"),
                        resultSet.getString("idMaGiamGia"));
                veXe.setNgayKhoiHanh(resultSet.getString("ngayKhoiHanh"));
                veXe.setGioKhoiHanh(resultSet.getString("gioKhoiHanh"));
                veXe.setIdNhaXe(resultSet.getString("idNhaXe"));
                veXe.setTenNhaXe(resultSet.getString("tenNhaXe"));
                veXe.setDiemDi(resultSet.getString("noiBatDau"));
                veXe.setDiemDen(resultSet.getString("dichDen"));
                return veXe;
            }
            connection.close();
            return null;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<Xe> getAvailableXeOfNhaXe(String idNhaXe, List<LocalDate> ngayChayList) {
        Connection connection = getConnection();
        List<Xe> res = new ArrayList<>();
        List<String> idXeTrung = new ArrayList<>();
        List<String> allIdXeFromLoTrinh = new ArrayList<>();

        try {
            PreparedStatement allXeFromLoTrinh = connection.prepareStatement("select lt.idXe, tg.* from Xe x, ThoiGianKhoiHanh tg, LoTrinh lt where x.idNhaXe = ? and x.idXe = lt.idXe and tg.ngayKhoiHanh>=CAST( GETDATE() AS Date ) and lt.idThoiGian = tg.idThoiGian ");
            allXeFromLoTrinh.setString(1, idNhaXe);
            ResultSet allXeFromLoTrinhSet = allXeFromLoTrinh.executeQuery();
            while (allXeFromLoTrinhSet.next()) {
                String idXe = allXeFromLoTrinhSet.getString(1);
                if (!allIdXeFromLoTrinh.contains(idXe)) {
                    allIdXeFromLoTrinh.add(idXe);
                }
            }

            PreparedStatement trungNgayKhoiHanh = connection.prepareStatement("select lt.idXe, tg.* from Xe x, ThoiGianKhoiHanh tg, LoTrinh lt where x.idNhaXe = ? and x.idXe = lt.idXe and lt.idThoiGian = tg.idThoiGian and tg.ngayKhoiHanh = ? ");
            trungNgayKhoiHanh.setString(1, idNhaXe);
            for (LocalDate ngayChay : ngayChayList) {
                trungNgayKhoiHanh.setString(2, ngayChay.toString());
                ResultSet resultSet = trungNgayKhoiHanh.executeQuery();
                while (resultSet.next()) {
                    String idXe = resultSet.getString(1);
                    if (!idXeTrung.contains(idXe)) {
                        idXeTrung.add(idXe);
                    }
                }
            }

            for (String idXe : allIdXeFromLoTrinh) {
                if (!idXeTrung.contains(idXe)) {
                    res.add(MyQueries.getXeByCol("idXe", idXe));
                }
            }

            PreparedStatement selectIdXeOutsideLoTrinh = connection.prepareStatement("select idXe from Xe except select lt.idXe from LoTrinh lt, Xe x, ThoiGianKhoiHanh tg where x.idNhaXe = ? and lt.idNhaXe = x.idNhaXe and tg.ngayKhoiHanh>=CAST( GETDATE() AS Date ) and lt.idThoiGian = tg.idThoiGian");
            selectIdXeOutsideLoTrinh.setString(1, idNhaXe);
            ResultSet selectIdXeOutsideLoTrinhSet = selectIdXeOutsideLoTrinh.executeQuery();
            while (selectIdXeOutsideLoTrinhSet.next()) {
                res.add(getXeByCol("idXe", selectIdXeOutsideLoTrinhSet.getString("idXe")));
            }

            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public static List<LoTrinh> getCurrentLoTrinhOfNhaXe(String idNhaXe) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("select lt.idLoTrinh, td.idTuyenDuong, tg.idThoiGian, x.idXe, lt.giaLoTrinh, lt.khoangThoiGianDiChuyen from GoGo.dbo.LoTrinh lt, GoGo.dbo.Xe x, GoGo.dbo.TuyenDuong td, ThoiGianKhoiHanh tg where lt.idNhaXe = ? and lt.idXe = x.idXe and lt.idTuyenDuong = td.idTuyenDuong and lt.idThoiGian = tg.idThoiGian and tg.ngayKhoiHanh>=getdate()");
            statement.setString(1, idNhaXe);
            ResultSet resultSet = statement.executeQuery();
            List<LoTrinh> res = new ArrayList<>();
            while (resultSet.next()) {
                LoTrinh loTrinh = new LoTrinh();
                loTrinh.setIdLoTrinh(resultSet.getString(1));
                loTrinh.setTuyenDuong(getTuyenDuongByCol("idTuyenDuong", resultSet.getString(2)));
                loTrinh.setThoiGianKhoiHanh(getThoiGianKhoiHanhByCol("idThoiGian", resultSet.getString(3)));
                loTrinh.setXe(getXeByCol("idXe", resultSet.getString(4)));
                loTrinh.setGiaLoTrinh(resultSet.getInt(5));
                loTrinh.setKhoangThoiGianDiChuyen(resultSet.getInt(6));
                res.add(loTrinh);
            }
            connection.close();
            return res;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static String searchIdTuyenDuong(String noiBatDau, String dichDen) {
        Connection connection = getConnection();
        String res = null;
        try {
            PreparedStatement statement = connection.prepareStatement("select idTuyenDuong from GoGo.dbo.TuyenDuong where noiBatDau=? and dichDen = ?");
            statement.setString(1, noiBatDau);
            statement.setString(2, dichDen);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                res = resultSet.getString(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public static List<LoTrinh> searchLoTrinh(String noiBatDau, String dichDen, LocalDate ngayKhoiHanh) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("select lt.idLoTrinh, td.idTuyenDuong, tg.idThoiGian, x.idXe, lt.giaLoTrinh, lt.khoangThoiGianDiChuyen, x.idNhaXe, dk.noiDonKhach, tk.noiTraKhach from GoGo.dbo.LoTrinh lt, GoGo.dbo.Xe x, GoGo.dbo.TuyenDuong td, GoGo.dbo.DonKhach dk, GoGo.dbo.TraKhach tk, ThoiGianKhoiHanh tg where lt.idXe = x.idXe and td.idTuyenDuong = ? and lt.idTuyenDuong = td.idTuyenDuong and lt.idThoiGian = tg.idThoiGian and tg.ngayKhoiHanh=? and lt.idLoTrinh = dk.idLoTrinh and lt.idLoTrinh = tk.idLoTrinh");
            statement.setString(1, searchIdTuyenDuong(noiBatDau, dichDen));
            statement.setString(2, ngayKhoiHanh.toString());
            ResultSet resultSet = statement.executeQuery();
            List<LoTrinh> res = new ArrayList<>();
            while (resultSet.next()) {
                LoTrinh loTrinh = new LoTrinh();
                loTrinh.setIdLoTrinh(resultSet.getString(1));
                loTrinh.setTuyenDuong(getTuyenDuongByCol("idTuyenDuong", resultSet.getString(2)));
                loTrinh.setThoiGianKhoiHanh(getThoiGianKhoiHanhByCol("idThoiGian", resultSet.getString(3)));
                loTrinh.setXe(getXeByCol("idXe", resultSet.getString(4)));
                loTrinh.setGiaLoTrinh(resultSet.getInt(5));
                loTrinh.setKhoangThoiGianDiChuyen(resultSet.getInt(6));
                loTrinh.setNhaXe(MyQueries.getNhaXeByCol("idNhaXe", resultSet.getString(7)));
                loTrinh.setDonKhach(new DonKhach(resultSet.getString(8)));
                loTrinh.setTraKhach(new TraKhach(resultSet.getString(9)));
                loTrinh.setThoiGianKetThuc();
                res.add(loTrinh);
            }
            connection.close();
            return res;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<GheXe> getGheConTrongOfXe(String idLoTrinh) {
        Connection connection = getConnection();
        List<GheXe> res = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("select gx.idGhe from (select lt.idXe from LoTrinh lt where lt.idLoTrinh = ?) as selectedXe, GheXe gx where selectedXe.idXe = gx.idXe except select idGhe from VeXe where idLoTrinh = ?");
            statement.setString(1, idLoTrinh);
            statement.setString(2, idLoTrinh);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                res.add(MyQueries.getGheXeByCol("idGhe", resultSet.getString("idGhe")));
            }
            connection.close();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
        return res;
    }

    public static void removeXe(String idXe) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Delete from GoGo.dbo.Xe where idXe = ?");
            statement.setString(1, idXe);
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void removeLoTrinh(String idLoTrinh) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Delete from GoGo.dbo.LoTrinh where idLoTrinh = ?");
            statement.setString(1, idLoTrinh);
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void cancelVe(String idVe){
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Delete from GoGo.dbo.VeXe where idVe = ?");
            statement.setString(1, idVe);
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static List<VeXe> getListVeOfNhaXe(String idNhaXe){
        Connection connection = getConnection();
        try {
            List<VeXe> veXeList = new ArrayList<>();
            PreparedStatement statement = connection.prepareStatement("Select vx.rating, vx.comment, vx.tenKhachHang from GoGo.dbo.VeXe as vx, GoGo.dbo.loTrinh as lt, GoGo.dbo.NhaXe as nx where vx.idLoTrinh = lt.idLoTrinh and lt.idNhaXe = nx.idNhaXe and lt.idNhaXe = ?");
            statement.setString(1, idNhaXe);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                VeXe veXe = new VeXe(resultSet.getString(1), resultSet.getInt(2), resultSet.getString(3), LocalDate.parse(resultSet.getString(4)), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7), resultSet.getString(8));
                veXeList.add(veXe);
            }
            connection.close();
            System.out.println(veXeList);
            return veXeList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void removeNhaXe(String idNhaXe) {
        Connection connection = getConnection();
        try {
            PreparedStatement xoaLoTrinh = connection.prepareStatement("Delete from GoGo.dbo.LoTrinh where idNhaXe = ?");
            xoaLoTrinh.setString(1,idNhaXe);
            PreparedStatement xoaXe = connection.prepareStatement("Delete from GoGo.dbo.Xe where idNhaXe = ?");
            xoaXe.setString(1, idNhaXe);
            PreparedStatement xoaNhaXe = connection.prepareStatement("Delete from GoGo.dbo.NhaXe where idNhaXe = ?");
            xoaNhaXe.setString(1, idNhaXe);
            xoaLoTrinh.executeUpdate();
            xoaXe.executeUpdate();
            xoaNhaXe.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<RatingInfo> getRatingOfNhaXe (String idNhaXe){
        Connection connection = getConnection();
        List<RatingInfo> ratingList = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("Select kh.ten, vx.rating, vx.comment, vx.ngayDatVe from GoGo.dbo.VeXe as vx, GoGo.dbo.loTrinh as lt, GoGo.dbo.NhaXe as nx, GoGo.dbo.KhachHang as kh where vx.idLoTrinh = lt.idLoTrinh and lt.idNhaXe = nx.idNhaXe and vx.idKhachHang = kh.idKhachHang and lt.idNhaXe = ?");
            statement.setString(1, idNhaXe);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                RatingInfo rating = new RatingInfo(resultSet.getString(1), resultSet.getInt(2), resultSet.getString(3), LocalDate.parse(resultSet.getString(4)));
                ratingList.add(rating);
            }
            connection.close();
            return ratingList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
