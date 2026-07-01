/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package SHA;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.util.Formatter;
 
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
 
/**
 *
 * @author JAVA
 */
public class HmacSha1Signature {
    private static final String HMAC_SHA1_ALGORITHM = "HmacSHA1";
    
    
	private static String toHexString(byte[] bytes) {
		Formatter formatter = new Formatter();
		
		for (byte b : bytes) {
			formatter.format("%02x", b);
		}
 
		return formatter.toString();
	}
 
	public static String calculateRFC2104HMAC(String data, String key)
		throws SignatureException, NoSuchAlgorithmException, InvalidKeyException
	{
                System.out.println("SHA data="+data);
                System.out.println("Security key="+key);
    
       		SecretKeySpec signingKey = new SecretKeySpec(key.getBytes(), HMAC_SHA1_ALGORITHM);
		Mac mac = Mac.getInstance(HMAC_SHA1_ALGORITHM);
		
		 System.out.println("SHA1-256_ALGORITHM MAC address="+mac);
		mac.init(signingKey);
		return toHexString(mac.doFinal(data.getBytes()));
	}
}

