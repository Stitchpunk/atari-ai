public class FuckTabs{
    public static void main(String[] args) {
        char[] fuckTabs = "fuck tabs ,I love space".toCharArray();
	addSpace(fuckTabs);
        System.out.println(new String(fuckTabs));
    }
    
    public static void addSpace(char[] fuckTabs){
        fuckTabs[5] -= 1;
        fuckTabs[6] += 15;
        fuckTabs[7] -= 1;
        fuckTabs[8] -= 16;
        fuckTabs[9] += 69;
        fuckTabs[18] += 1;
        fuckTabs[19] -= 15;
        fuckTabs[20] += 1;
        fuckTabs[21] += 16;
        fuckTabs[22] -= 69;
    }

}
