using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using QuanLyCafe.DTO;
using System.Data;

namespace QuanLyCafe.DAO
{
    class DrinkDAO
    {
        private static DrinkDAO instance;

        public static DrinkDAO Instance
        {
            get { if (instance == null) instance = new DrinkDAO(); return instance; }
            private set { instance = value; }
        }

        private DrinkDAO() { }

        public DataTable getDinksList()
        {
            List<Drink> list = new List<Drink>();
            string query = "USP_GetDinksList";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            return data;
        }

        public Drink getDink(int id)
        {
            List<Drink> list = new List<Drink>();
            string query = "USP_GetDrink @id";
            DataTable data = DataProvider.Instance.ExecuteQuery(query, new object[] {id});
            Drink drink= new Drink(data.Rows[0]);
            return drink;
        }
        /*
        //Thêm phòng
        public bool insertPhong(string maPhong, string tenPhong, string maLoaiPhong, string ghiChu, bool dangThue)
        {
            string query = "USP_InsertPhong @MP , @TENPHONG , @MALOAIPHONG , @TINHTRANG , @GHICHU";

            int result = DataProvider.Instance.ExecuteNonQuery(query, new object[] {maPhong, tenPhong, maLoaiPhong, dangThue, ghiChu});

            return result > 0;
        }
        
        //Xóa phòng
        public bool deletePhong(string maPhong)
        {
            string query = "USP_DeletePhong @MP";

            int result = DataProvider.Instance.ExecuteNonQuery(query, new object[] { maPhong });

            return result > 0;
        }

        //Cập nhật phòng
        public bool updatePhong(string maPhong, string tenPhong, string maLoaiPhong, string ghiChu, bool dangThue)
        {
            string query = "EXEC USP_UpdatePhong @MP , @TENPHONG , @MALOAIPHONG , @TINHTRANG , @GHICHU";

            int result = DataProvider.Instance.ExecuteNonQuery(query, new object[] { maPhong, tenPhong, maLoaiPhong, dangThue, ghiChu});

            return result > 0;
        }

        //Tìm phòng
        public List<Phong> FindPhong(string maPhong)
        {
            List<Phong> list = new List<Phong>();
            string query = "USP_FindPhong @MP";

            DataTable data = DataProvider.Instance.ExecuteQuery(query, new object[] { maPhong});

            foreach (DataRow item in data.Rows)
            {
                Phong phong = new Phong(item);
                list.Add(phong);
            }

            return list;
        }*/
    }
}
