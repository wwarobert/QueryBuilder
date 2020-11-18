public virtual inherited sharing class QueryBuilder {

    private String fromObject;
    private Set<String> selectFields;
    private Set<String> groupFields;

    private Integer queryLimit;
    private Integer queryOffset;

    private Boolean withSecurityEnforced = false;


    public QueryBuilder() {

        this.selectFields = new Set<String>();
        this.groupFields = new Set<String>();

        this.queryLimit = 0;
        this.queryOffset = 0;
    }

    public QueryBuilder addField(String fName) {

        if (fName.contains(',')) {
            return this.addFields();
        }

        this.selectFields.add(fName.trim());
        return this;
    }

    public QueryBuilder addFields(String fNames) {

        this.fieldList.add(fNames.trim().split(','));
        return this;
    }

    public QueryBuilder addFrom(String fromObject) {

        this.fromObject = fromObject;
        return this;
    }

    public class QueryBuilderException extends Exception {}
}