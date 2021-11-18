/**
 * 
 */
package week3;

/**
 * @author Promineo
 *
 */
public class IcyHot {

  /**
   * Given two temperatures, return true if one is less than 0 and the other is greater than 100.
   * 
   * @param args
   */
  public static void main(String[] args) {
    System.out.println(icyHot(120, -1)); // true
    System.out.println(icyHot(-1, 120)); // true
    System.out.println(icyHot(2, 120)); // false
    System.out.println(icyHot(-1, -1)); // false
    System.out.println(icyHot(101, 105)); // false
  }

  /**
   * @param temp1
   * @param temp2
   */
  private static boolean icyHot(int temp1, int temp2) {
    return temp1 < 0 && temp2 > 100 || temp1 > 100 && temp2 < 0;
  }

}
