package august.entity;

public class Area {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column area.area_id
     *
     * @mbg.generated
     */
    private Integer areaId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column area.area_name
     *
     * @mbg.generated
     */
    private String areaName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column area.area_price
     *
     * @mbg.generated
     */
    private Long areaPrice;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column area.city_id
     *
     * @mbg.generated
     */
    private String cityId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column area.area_remark
     *
     * @mbg.generated
     */
    private String areaRemark;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column area.area_id
     *
     * @return the value of area.area_id
     *
     * @mbg.generated
     */
    public Integer getAreaId() {
        return areaId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column area.area_id
     *
     * @param areaId the value for area.area_id
     *
     * @mbg.generated
     */
    public void setAreaId(Integer areaId) {
        this.areaId = areaId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column area.area_name
     *
     * @return the value of area.area_name
     *
     * @mbg.generated
     */
    public String getAreaName() {
        return areaName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column area.area_name
     *
     * @param areaName the value for area.area_name
     *
     * @mbg.generated
     */
    public void setAreaName(String areaName) {
        this.areaName = areaName == null ? null : areaName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column area.area_price
     *
     * @return the value of area.area_price
     *
     * @mbg.generated
     */
    public Long getAreaPrice() {
        return areaPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column area.area_price
     *
     * @param areaPrice the value for area.area_price
     *
     * @mbg.generated
     */
    public void setAreaPrice(Long areaPrice) {
        this.areaPrice = areaPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column area.city_id
     *
     * @return the value of area.city_id
     *
     * @mbg.generated
     */
    public String getCityId() {
        return cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column area.city_id
     *
     * @param cityId the value for area.city_id
     *
     * @mbg.generated
     */
    public void setCityId(String cityId) {
        this.cityId = cityId == null ? null : cityId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column area.area_remark
     *
     * @return the value of area.area_remark
     *
     * @mbg.generated
     */
    public String getAreaRemark() {
        return areaRemark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column area.area_remark
     *
     * @param areaRemark the value for area.area_remark
     *
     * @mbg.generated
     */
    public void setAreaRemark(String areaRemark) {
        this.areaRemark = areaRemark == null ? null : areaRemark.trim();
    }
}