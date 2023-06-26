﻿/*
* ==============================================================================
*
* FileName: Captcha.cs
* Created: 2020/5/15 20:45:42
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using SkiaSharp;
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using static System.Net.Mime.MediaTypeNames;

namespace Meiam.System.Common.Utilities
{
    /// <summary>
    /// Captcha
    /// </summary>
    public static class CaptchaUtil
    {
        /// <summary>
        /// 生成随机验证码
        /// </summary>
        /// <param name="codeLength"></param>
        /// <returns></returns>
        public static string GetRandomEnDigitalText(int codeLength = 4)
        {
            var Letters = "1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,U,V,W,X,Y,Z";

            var array = Letters.Split(new[] { ',' });

            var random = new Random();

            var temp = -1;

            var captcheCode = string.Empty;

            for (int i = 0; i < codeLength; i++)
            {
                if (temp != -1)
                    random = new Random(i * temp * unchecked((int)DateTime.Now.Ticks));

                var index = random.Next(array.Length);

                if (temp != -1 && temp == index)
                    return GetRandomEnDigitalText(codeLength);

                temp = index;

                captcheCode += array[index];
            }
            return captcheCode;
        }

        /// <summary>
        /// 生成随机验证码图片
        /// </summary>
        /// <param name="captchaCode">随机验证码</param>
        /// <param name="width">宽为0将根据验证码长度自动匹配合适宽度</param>
        /// <param name="height">高</param>
        /// <returns></returns>
        public static CaptchaResult GenerateCaptchaImage(string captchaCode, int width = 0, int height = 30)
        {
            //验证码颜色集合
            SKColor[] c = { SKColors.Black, SKColors.Red, SKColors.DarkBlue, SKColors.Green, SKColors.Orange, SKColors.Brown, SKColors.DarkCyan, SKColors.Purple };

            //验证码字体集合
            string[] fonts = { "Verdana", "Arial" };

            //定义图像的大小，生成图像的实例


            //定义图像的大小，生成图像的实例
            var image = new SKBitmap(width == 0 ? captchaCode.Length * 25 : width, height);
            var canvas = new SKCanvas(image);

            //背景设为白色
            canvas.Clear(SKColors.White);

            var random = new Random();

            //绘制噪点
            for (var i = 0; i < 100; i++)
            {
                var x = random.Next(image.Width);
                var y = random.Next(image.Height);

                canvas.DrawRect(new SKRect(x, y, x + 2, y + 2), new SKPaint { Color = SKColors.LightGray });
            }

            //验证码绘制  
            for (var i = 0; i < captchaCode.Length; i++)
            {
                //随机颜色索引值 
                var cindex = random.Next(c.Length);

                //随机字体索引值 
                var findex = random.Next(fonts.Length);


                //颜色
                var color = c[cindex];

                //字体
                var fontFamily = SKTypeface.FromFamilyName(fonts[findex], SKFontStyleWeight.Bold, SKFontStyleWidth.Normal, SKFontStyleSlant.Upright);
                var fontSize = 20;

                var paint = new SKPaint {  Color = color , Typeface = fontFamily, TextSize = fontSize };

                var ii = 4;
                if ((i + 1) % 2 == 0)
                    ii = 2;

                //绘制一个验证字符
                canvas.DrawText(captchaCode.Substring(i, 1), 17 + (i * 17), ii + fontSize, paint);

            }

            //随机画5条线
            for (int i = 0; i < 5; i++)
            {
                canvas.DrawLine(new SKPoint(random.Next(image.Width), random.Next(image.Height)), new SKPoint(random.Next(image.Width), random.Next(image.Height)),
                    new SKPaint() { Color = SKColor.FromHsv(random.Next(0, 256), random.Next(0, 256), random.Next(0, 256)) });
            }

            var ms = new MemoryStream();

            using (var captchaImage = SKImage.FromBitmap(image))
            {
                captchaImage.Encode(SKEncodedImageFormat.Png, 100).SaveTo(ms);
            }
            


            canvas.Dispose();
            image.Dispose();

            return new CaptchaResult { CaptchaGUID = Guid.NewGuid().ToString().ToUpper(),  CaptchaCode = captchaCode, CaptchaMemoryStream = ms, Timestamp = DateTime.Now };
        }

        /// <summary>
        /// CaptchaResult
        /// </summary>
        public class CaptchaResult
        {
            /// <summary>
            /// CaptchaGUID
            /// </summary>
            public string CaptchaGUID { get; set; }

            /// <summary>
            /// CaptchaCode
            /// </summary>
            public string CaptchaCode { get; set; }

            /// <summary>
            /// CaptchaMemoryStream
            /// </summary>
            public MemoryStream CaptchaMemoryStream { get; set; }

            /// <summary>
            /// Timestamp
            /// </summary>
            public DateTime Timestamp { get; set; }
        }
    }
}
