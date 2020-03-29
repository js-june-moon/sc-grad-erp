public class PurchaseDTO {
	private String MATERIALS_ID;
	private String 	SELLER_BID;
	private int P_AMOUNT;
	private int P_UNIT_PRICE;
	private int P_PRICE;
	private String D_DATE;
	private String PURCHASE_EID;
	private String PURCHASE_CODE;
	
	public String getMATERIALS_ID() {
		return MATERIALS_ID;
	}
	
	public void setMATERIALS_ID(String mATERIALS_ID) {
		MATERIALS_ID = mATERIALS_ID;
	}
	
	public String getSELLER_BID() {
		return SELLER_BID;
	}
	
	public void setSELLER_BID(String sELLER_BID) {
		SELLER_BID = sELLER_BID;
	}
	
	public int getP_AMOUNT() {
		return P_AMOUNT;
	}
	
	public void setP_AMOUNT(int p_AMOUNT) {
		P_AMOUNT = p_AMOUNT;
	}
	
	public int getP_UNIT_PRICE() {
		return P_UNIT_PRICE;
	}
	
	public void setP_UNIT_PRICE(int p_UNIT_PRICE) {
		P_UNIT_PRICE = p_UNIT_PRICE;
	}
	
	public int getP_PRICE() {
		return P_PRICE;
	}
	
	public void setP_PRICE(int p_PRICE) {
		P_PRICE = p_PRICE;
	}
	
	public String getD_DATE() {
		return D_DATE;
	}
	
	public void setD_DATE(String d_DATE) {
		D_DATE = d_DATE;
	}
	
	public String getPURCHASE_EID() {
		return PURCHASE_EID;
	}
	
	public void setPURCHASE_EID(String pURCHASE_EID) {
		PURCHASE_EID = pURCHASE_EID;
	}
	
	public String getPURCHASE_CODE() {
		return PURCHASE_CODE;
	}
	
	public void setPURCHASE_CODE(String pURCHASE_CODE) {
		PURCHASE_CODE = pURCHASE_CODE;
	}
	
	public PurchaseDTO() {
		
	}
	
	public PurchaseDTO(String mATERIALS_ID, String sELLER_BID, int p_AMOUNT, int p_UNIT_PRICE, int p_PRICE,
			String d_DATE, String pURCHASE_EID, String pURCHASE_CODE) {
		super();
		MATERIALS_ID = mATERIALS_ID;
		SELLER_BID = sELLER_BID;
		P_AMOUNT = p_AMOUNT;
		P_UNIT_PRICE = p_UNIT_PRICE;
		P_PRICE = p_PRICE;
		D_DATE = d_DATE;
		PURCHASE_EID = pURCHASE_EID;
		PURCHASE_CODE = pURCHASE_CODE;
	}
	
	@Override
	public String toString() {
		return "PurchaseDTO [MATERIALS_ID=" + MATERIALS_ID + ", SELLER_BID=" + SELLER_BID + ", P_AMOUNT=" + P_AMOUNT
				+ ", P_UNIT_PRICE=" + P_UNIT_PRICE + ", P_PRICE=" + P_PRICE + ", D_DATE=" + D_DATE + ", PURCHASE_EID="
				+ PURCHASE_EID + ", PURCHASE_CODE=" + PURCHASE_CODE + "]";
	}
}
