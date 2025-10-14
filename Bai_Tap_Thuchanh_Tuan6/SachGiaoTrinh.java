    public class SachGiaoTrinh extends Sach {
        private String monHoc;
        private String capDo;

        public SachGiaoTrinh() {
        }

        public SachGiaoTrinh(String maSach, String tieuDe, String tacGia, int namXuatBan, int soLuong, String monHoc, String CapDo) {
            super(maSach, tieuDe, tacGia, namXuatBan, soLuong);
            this.monHoc = monHoc;
            this.capDo = capDo;
        }

        public String getMonHoc() {
            return monHoc;
        }

        public void setMonHoc(String monHoc) {
            this.monHoc = monHoc;
        }

        public String getcapDo() {
            return capDo;
        }

        public void setcapDo(String capDo) {
            this.capDo = capDo;
        }

        @Override
        public String toString() {
        return super.toString() +
                "\nMon Hoc: " + monHoc +
                "\nCap Do: " + capDo;       
        }
    }
