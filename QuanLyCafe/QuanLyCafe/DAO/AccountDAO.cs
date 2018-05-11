using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
using System.Data;

namespace QuanLyCafe.DAO
{
    class AccountDAO
    {
        private static AccountDAO instance;

        public static AccountDAO Instance
        {
            get { if (instance == null) instance = new AccountDAO(); return instance; }
            private set { instance = value; }
        }

        private AccountDAO() { }

        public bool DangNhap(string tenDangNhap, string tenMatKhau)
        {
            byte[] temp = ASCIIEncoding.ASCII.GetBytes(tenMatKhau);
            byte[] hasData = new MD5CryptoServiceProvider().ComputeHash(temp);

            string hasPass = "";

            foreach (byte item in hasData)
            {
                hasPass += item;
            }

            string query = "USP_DangNhap @USERNAME , @PASSWORD";

            DataTable result = DataProvider.Instance.ExecuteQuery(query, new object[] { tenDangNhap, hasPass});

            return result.Rows.Count > 0;
        }
    }
}
