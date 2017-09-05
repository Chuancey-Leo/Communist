// Decompiled by Jad v1.5.8f. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst 
// Source File Name:   DateUtil.java

package org.wingstudio.util;

import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package org.wingstudio.util:
//            StringUtil

public class DateUtil
{

    public DateUtil()
    {
    }

    public static String formatDate(Date date, String format)
    {
        String result = "";
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        if(date != null)
            result = sdf.format(date);
        return result;
    }

    public static Date formatString(String str, String format)
        throws Exception
    {
        if(StringUtil.isEmpty(str))
        {
            return null;
        } else
        {
            SimpleDateFormat sdf = new SimpleDateFormat(format);
            return sdf.parse(str);
        }
    }

    public static String getCurrentDateStr()
        throws Exception
    {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
        return sdf.format(date);
    }
}
