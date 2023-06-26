﻿using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace Meiam.System.Common.Security
{
    public class RSAEncode
    {
        #region RSA 加密解密   

        #region RSA 的密钥产生   

        /// <summary>  
        /// RSA 的密钥产生 产生私钥 和公钥   
        /// </summary>  
        /// <param name="xmlKeys"></param>  
        /// <param name="xmlPublicKey"></param>  
        public void RSAKey(out string xmlKeys, out string xmlPublicKey)
        {
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            xmlKeys = rsa.ToXmlString(true);
            xmlPublicKey = rsa.ToXmlString(false);
        }
        #endregion

        #region RSA的加密函数   
        //##############################################################################   
        //RSA 方式加密   
        //说明KEY必须是XML的行式,返回的是字符串   
        //在有一点需要说明！！该加密方式有 长度 限制的！！   
        //##############################################################################   

        //RSA的加密函数  string  
        public string RSAEncrypt(string xmlPublicKey, string m_strEncryptString)
        {

            byte[] PlainTextBArray;
            byte[] CypherTextBArray;
            string Result;
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            rsa.FromXmlString(xmlPublicKey);
            PlainTextBArray = (new UnicodeEncoding()).GetBytes(m_strEncryptString);
            CypherTextBArray = rsa.Encrypt(PlainTextBArray, false);
            Result = Convert.ToBase64String(CypherTextBArray);
            return Result;

        }
        //RSA的加密函数 byte[]  
        public string RSAEncrypt(string xmlPublicKey, byte[] EncryptString)
        {

            byte[] CypherTextBArray;
            string Result;
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            rsa.FromXmlString(xmlPublicKey);
            CypherTextBArray = rsa.Encrypt(EncryptString, false);
            Result = Convert.ToBase64String(CypherTextBArray);
            return Result;

        }
        #endregion

        #region RSA的解密函数   
        //RSA的解密函数  string  
        public string RSADecrypt(string xmlPrivateKey, string m_strDecryptString)
        {
            byte[] PlainTextBArray;
            byte[] DypherTextBArray;
            string Result;
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            rsa.FromXmlString(xmlPrivateKey);
            PlainTextBArray = Convert.FromBase64String(m_strDecryptString);
            DypherTextBArray = rsa.Decrypt(PlainTextBArray, false);
            Result = (new UnicodeEncoding()).GetString(DypherTextBArray);
            return Result;

        }

        //RSA的解密函数  byte  
        public string RSADecrypt(string xmlPrivateKey, byte[] DecryptString)
        {
            byte[] DypherTextBArray;
            string Result;
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            rsa.FromXmlString(xmlPrivateKey);
            DypherTextBArray = rsa.Decrypt(DecryptString, false);
            Result = (new UnicodeEncoding()).GetString(DypherTextBArray);
            return Result;

        }
        #endregion

        #endregion

        #region RSA数字签名   

        #region 获取Hash描述表   
        //获取Hash描述表   
        public bool GetHash(string m_strSource, ref byte[] HashData)
        {
            //从字符串中取得Hash描述   
            byte[] Buffer;
            var md5 = MD5.Create();
            Buffer = Encoding.GetEncoding("GB2312").GetBytes(m_strSource);
            HashData = md5.ComputeHash(Buffer);

            return true;
        }

        //获取Hash描述表   
        public bool GetHash(string m_strSource, ref string strHashData)
        {

            //从字符串中取得Hash描述   
            byte[] Buffer;
            byte[] HashData;
            var md5 = MD5.Create();
            Buffer = Encoding.GetEncoding("GB2312").GetBytes(m_strSource);
            HashData = md5.ComputeHash(Buffer);

            strHashData = Convert.ToBase64String(HashData);
            return true;

        }

        //获取Hash描述表   
        public bool GetHash(FileStream objFile, ref byte[] HashData)
        {

            //从文件中取得Hash描述   
            var md5 = MD5.Create();
            HashData = md5.ComputeHash(objFile);
            objFile.Close();

            return true;

        }

        //获取Hash描述表   
        public bool GetHash(FileStream objFile, ref string strHashData)
        {

            //从文件中取得Hash描述   
            byte[] HashData;
            var md5 = MD5.Create();
            HashData = md5.ComputeHash(objFile);
            objFile.Close();

            strHashData = Convert.ToBase64String(HashData);

            return true;

        }
        #endregion

        #region RSA签名   
        //RSA签名   
        public bool SignatureFormatter(string p_strKeyPrivate, byte[] HashbyteSignature, ref byte[] EncryptedSignatureData)
        {

            RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();

            RSA.FromXmlString(p_strKeyPrivate);
            RSAPKCS1SignatureFormatter RSAFormatter = new RSAPKCS1SignatureFormatter(RSA);
            //设置签名的算法为MD5   
            RSAFormatter.SetHashAlgorithm("MD5");
            //执行签名   
            EncryptedSignatureData = RSAFormatter.CreateSignature(HashbyteSignature);

            return true;

        }

        //RSA签名   
        public bool SignatureFormatter(string p_strKeyPrivate, byte[] HashbyteSignature, ref string m_strEncryptedSignatureData)
        {

            byte[] EncryptedSignatureData;

            RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();

            RSA.FromXmlString(p_strKeyPrivate);
            RSAPKCS1SignatureFormatter RSAFormatter = new RSAPKCS1SignatureFormatter(RSA);
            //设置签名的算法为MD5   
            RSAFormatter.SetHashAlgorithm("MD5");
            //执行签名   
            EncryptedSignatureData = RSAFormatter.CreateSignature(HashbyteSignature);

            m_strEncryptedSignatureData = Convert.ToBase64String(EncryptedSignatureData);

            return true;

        }

        //RSA签名   
        public bool SignatureFormatter(string p_strKeyPrivate, string m_strHashbyteSignature, ref byte[] EncryptedSignatureData)
        {

            byte[] HashbyteSignature;

            HashbyteSignature = Convert.FromBase64String(m_strHashbyteSignature);
            RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();

            RSA.FromXmlString(p_strKeyPrivate);
            RSAPKCS1SignatureFormatter RSAFormatter = new RSAPKCS1SignatureFormatter(RSA);
            //设置签名的算法为MD5   
            RSAFormatter.SetHashAlgorithm("MD5");
            //执行签名   
            EncryptedSignatureData = RSAFormatter.CreateSignature(HashbyteSignature);

            return true;

        }

        //RSA签名   
        public bool SignatureFormatter(string p_strKeyPrivate, string m_strHashbyteSignature, ref string m_strEncryptedSignatureData)
        {

            byte[] HashbyteSignature;
            byte[] EncryptedSignatureData;

            HashbyteSignature = Convert.FromBase64String(m_strHashbyteSignature);
            RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();

            RSA.FromXmlString(p_strKeyPrivate);
            RSAPKCS1SignatureFormatter RSAFormatter = new RSAPKCS1SignatureFormatter(RSA);
            //设置签名的算法为MD5   
            RSAFormatter.SetHashAlgorithm("MD5");
            //执行签名   
            EncryptedSignatureData = RSAFormatter.CreateSignature(HashbyteSignature);

            m_strEncryptedSignatureData = Convert.ToBase64String(EncryptedSignatureData);

            return true;

        }
        #endregion

        #region RSA 签名验证   

        public bool SignatureDeformatter(string p_strKeyPublic, byte[] HashbyteDeformatter, byte[] DeformatterData)
        {

            RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();

            RSA.FromXmlString(p_strKeyPublic);
            RSAPKCS1SignatureDeformatter RSADeformatter = new RSAPKCS1SignatureDeformatter(RSA);
            //指定解密的时候HASH算法为MD5   
            RSADeformatter.SetHashAlgorithm("MD5");

            if (RSADeformatter.VerifySignature(HashbyteDeformatter, DeformatterData))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool SignatureDeformatter(string p_strKeyPublic, string p_strHashbyteDeformatter, byte[] DeformatterData)
        {

            byte[] HashbyteDeformatter;

            HashbyteDeformatter = Convert.FromBase64String(p_strHashbyteDeformatter);

            RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();

            RSA.FromXmlString(p_strKeyPublic);
            RSAPKCS1SignatureDeformatter RSADeformatter = new RSAPKCS1SignatureDeformatter(RSA);
            //指定解密的时候HASH算法为MD5   
            RSADeformatter.SetHashAlgorithm("MD5");

            if (RSADeformatter.VerifySignature(HashbyteDeformatter, DeformatterData))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool SignatureDeformatter(string p_strKeyPublic, byte[] HashbyteDeformatter, string p_strDeformatterData)
        {

            byte[] DeformatterData;

            RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();

            RSA.FromXmlString(p_strKeyPublic);
            RSAPKCS1SignatureDeformatter RSADeformatter = new RSAPKCS1SignatureDeformatter(RSA);
            //指定解密的时候HASH算法为MD5   
            RSADeformatter.SetHashAlgorithm("MD5");

            DeformatterData = Convert.FromBase64String(p_strDeformatterData);

            if (RSADeformatter.VerifySignature(HashbyteDeformatter, DeformatterData))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool SignatureDeformatter(string p_strKeyPublic, string p_strHashbyteDeformatter, string p_strDeformatterData)
        {

            byte[] DeformatterData;
            byte[] HashbyteDeformatter;

            HashbyteDeformatter = Convert.FromBase64String(p_strHashbyteDeformatter);
            RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();

            RSA.FromXmlString(p_strKeyPublic);
            RSAPKCS1SignatureDeformatter RSADeformatter = new RSAPKCS1SignatureDeformatter(RSA);
            //指定解密的时候HASH算法为MD5   
            RSADeformatter.SetHashAlgorithm("MD5");

            DeformatterData = Convert.FromBase64String(p_strDeformatterData);

            if (RSADeformatter.VerifySignature(HashbyteDeformatter, DeformatterData))
            {
                return true;
            }
            else
            {
                return false;
            }

        }


        #endregion


        #endregion

    }
}
