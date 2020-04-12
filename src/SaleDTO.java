public class SaleDTO {
	private String ALE_CODE;
	private String VENDOR_BID;
	private String PRODUCT_ID;
	private int S_AMOUNT;
	private int S_UNIT_PRICE;
	private int S_PRICE;
	private String DEAL_ITEM_ID;
	private String D_DATE;
	private String SALE_EID;

	public String getALE_CODE() {
		return ALE_CODE;
	}

	public void setALE_CODE(String aLE_CODE) {
		ALE_CODE = aLE_CODE;
	}

	public String getVENDOR_BID() {
		return VENDOR_BID;
	}

	public void setVENDOR_BID(String vENDOR_BID) {
		VENDOR_BID = vENDOR_BID;
	}

	public String getPRODUCT_ID() {
		return PRODUCT_ID;
	}

	public void setPRODUCT_ID(String pRODUCT_ID) {
		PRODUCT_ID = pRODUCT_ID;
	}

	public int getS_AMOUNT() {
		return S_AMOUNT;
	}

	public void setS_AMOUNT(int s_AMOUNT) {
		S_AMOUNT = s_AMOUNT;
	}

	public int getS_UNIT_PRICE() {
		return S_UNIT_PRICE;
	}

	public void setS_UNIT_PRICE(int s_UNIT_PRICE) {
		S_UNIT_PRICE = s_UNIT_PRICE;
	}

	public int getS_PRICE() {
		return S_PRICE;
	}

	public void setS_PRICE(int s_PRICE) {
		S_PRICE = s_PRICE;
	}

	public String getDEAL_ITEM_ID() {
		return DEAL_ITEM_ID;
	}

	public void setDEAL_ITEM_ID(String dEAL_ITEM_ID) {
		DEAL_ITEM_ID = dEAL_ITEM_ID;
	}

	public String getD_DATE() {
		return D_DATE;
	}

	public void setD_DATE(String d_DATE) {
		D_DATE = d_DATE;
	}

	public String getSALE_EID() {
		return SALE_EID;
	}

	public void setSALE_EID(String sALE_EID) {
		SALE_EID = sALE_EID;
	}

	public SaleDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SaleDTO(String aLE_CODE, String vENDOR_BID, String pRODUCT_ID, int s_AMOUNT, int s_UNIT_PRICE, int s_PRICE,
			String dEAL_ITEM_ID, String d_DATE, String sALE_EID) {
		super();
		ALE_CODE = aLE_CODE;
		VENDOR_BID = vENDOR_BID;
		PRODUCT_ID = pRODUCT_ID;
		S_AMOUNT = s_AMOUNT;
		S_UNIT_PRICE = s_UNIT_PRICE;
		S_PRICE = s_PRICE;
		DEAL_ITEM_ID = dEAL_ITEM_ID;
		D_DATE = d_DATE;
		SALE_EID = sALE_EID;
	}

	@Override
	public String toString() {
		return "SaleDTO [ALE_CODE=" + ALE_CODE + ", VENDOR_BID=" + VENDOR_BID + ", PRODUCT_ID=" + PRODUCT_ID
				+ ", S_AMOUNT=" + S_AMOUNT + ", S_UNIT_PRICE=" + S_UNIT_PRICE + ", S_PRICE=" + S_PRICE
				+ ", DEAL_ITEM_ID=" + DEAL_ITEM_ID + ", D_DATE=" + D_DATE + ", SALE_EID=" + SALE_EID + "]";
	}
}
