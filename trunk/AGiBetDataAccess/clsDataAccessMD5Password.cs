using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetDataAccess
{
    public static class clsDataAccessMD5Password
    {
        public static String ChangeMD5(String strSource)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();

            byte[] bs = System.Text.Encoding.UTF8.GetBytes(strSource);
            bs = x.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x2").ToLower());
            }
            return s.ToString();
        }
    }
}
