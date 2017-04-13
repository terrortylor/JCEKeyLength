import javax.crypto.Cipher;

class CheckLength {
  public static void main(String[] args) {
    try {
      int maxKeyLen = Cipher.getMaxAllowedKeyLength("AES");
      System.out.println("JCE Length: " + maxKeyLen);
    } catch (Exception e){
      System.out.println("oops");
    }
  }
}
