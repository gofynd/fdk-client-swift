

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomFieldTypeSchema
        Used By: Content
    */

    class CustomFieldTypeSchema: Codable {
        
        
        public var stringSingleLine: StringSingleLine?
        
        public var stringMultiLine: StringMultiLine?
        
        public var dropdown: Dropdown?
        
        public var integer: Integer?
        
        public var floatType: FloatType?
        
        public var booleanType: BooleanType?
        
        public var date: Date?
        
        public var datetime: Datetime?
        
        public var json: Json?
        
        public var file: File?
        
        public var url: Url?
        
        public var metaobject: Metaobject?
        
        public var product: Product?
        

        public enum CodingKeys: String, CodingKey {
            
            case stringSingleLine = "string_single_line"
            
            case stringMultiLine = "string_multi_line"
            
            case dropdown = "dropdown"
            
            case integer = "integer"
            
            case floatType = "float_type"
            
            case booleanType = "boolean_type"
            
            case date = "date"
            
            case datetime = "datetime"
            
            case json = "json"
            
            case file = "file"
            
            case url = "url"
            
            case metaobject = "metaobject"
            
            case product = "product"
            
        }

        public init(booleanType: BooleanType? = nil, date: Date? = nil, datetime: Datetime? = nil, dropdown: Dropdown? = nil, file: File? = nil, floatType: FloatType? = nil, integer: Integer? = nil, json: Json? = nil, metaobject: Metaobject? = nil, product: Product? = nil, stringMultiLine: StringMultiLine? = nil, stringSingleLine: StringSingleLine? = nil, url: Url? = nil) {
            
            self.stringSingleLine = stringSingleLine
            
            self.stringMultiLine = stringMultiLine
            
            self.dropdown = dropdown
            
            self.integer = integer
            
            self.floatType = floatType
            
            self.booleanType = booleanType
            
            self.date = date
            
            self.datetime = datetime
            
            self.json = json
            
            self.file = file
            
            self.url = url
            
            self.metaobject = metaobject
            
            self.product = product
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stringSingleLine = try container.decode(StringSingleLine.self, forKey: .stringSingleLine)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stringMultiLine = try container.decode(StringMultiLine.self, forKey: .stringMultiLine)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dropdown = try container.decode(Dropdown.self, forKey: .dropdown)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integer = try container.decode(Integer.self, forKey: .integer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    floatType = try container.decode(FloatType.self, forKey: .floatType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    booleanType = try container.decode(BooleanType.self, forKey: .booleanType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    date = try container.decode(Date.self, forKey: .date)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    datetime = try container.decode(Datetime.self, forKey: .datetime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    json = try container.decode(Json.self, forKey: .json)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    file = try container.decode(File.self, forKey: .file)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(Url.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaobject = try container.decode(Metaobject.self, forKey: .metaobject)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(Product.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stringSingleLine, forKey: .stringSingleLine)
            
            
            
            
            try? container.encodeIfPresent(stringMultiLine, forKey: .stringMultiLine)
            
            
            
            
            try? container.encodeIfPresent(dropdown, forKey: .dropdown)
            
            
            
            
            try? container.encodeIfPresent(integer, forKey: .integer)
            
            
            
            
            try? container.encodeIfPresent(floatType, forKey: .floatType)
            
            
            
            
            try? container.encodeIfPresent(booleanType, forKey: .booleanType)
            
            
            
            
            try? container.encodeIfPresent(date, forKey: .date)
            
            
            
            
            try? container.encodeIfPresent(datetime, forKey: .datetime)
            
            
            
            
            try? container.encodeIfPresent(json, forKey: .json)
            
            
            
            
            try? container.encodeIfPresent(file, forKey: .file)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(metaobject, forKey: .metaobject)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomFieldTypeSchema
        Used By: Content
    */

    class CustomFieldTypeSchema: Codable {
        
        
        public var stringSingleLine: StringSingleLine?
        
        public var stringMultiLine: StringMultiLine?
        
        public var dropdown: Dropdown?
        
        public var integer: Integer?
        
        public var floatType: FloatType?
        
        public var booleanType: BooleanType?
        
        public var date: Date?
        
        public var datetime: Datetime?
        
        public var json: Json?
        
        public var file: File?
        
        public var url: Url?
        
        public var metaobject: Metaobject?
        
        public var product: Product?
        

        public enum CodingKeys: String, CodingKey {
            
            case stringSingleLine = "string_single_line"
            
            case stringMultiLine = "string_multi_line"
            
            case dropdown = "dropdown"
            
            case integer = "integer"
            
            case floatType = "float_type"
            
            case booleanType = "boolean_type"
            
            case date = "date"
            
            case datetime = "datetime"
            
            case json = "json"
            
            case file = "file"
            
            case url = "url"
            
            case metaobject = "metaobject"
            
            case product = "product"
            
        }

        public init(booleanType: BooleanType? = nil, date: Date? = nil, datetime: Datetime? = nil, dropdown: Dropdown? = nil, file: File? = nil, floatType: FloatType? = nil, integer: Integer? = nil, json: Json? = nil, metaobject: Metaobject? = nil, product: Product? = nil, stringMultiLine: StringMultiLine? = nil, stringSingleLine: StringSingleLine? = nil, url: Url? = nil) {
            
            self.stringSingleLine = stringSingleLine
            
            self.stringMultiLine = stringMultiLine
            
            self.dropdown = dropdown
            
            self.integer = integer
            
            self.floatType = floatType
            
            self.booleanType = booleanType
            
            self.date = date
            
            self.datetime = datetime
            
            self.json = json
            
            self.file = file
            
            self.url = url
            
            self.metaobject = metaobject
            
            self.product = product
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stringSingleLine = try container.decode(StringSingleLine.self, forKey: .stringSingleLine)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stringMultiLine = try container.decode(StringMultiLine.self, forKey: .stringMultiLine)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dropdown = try container.decode(Dropdown.self, forKey: .dropdown)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integer = try container.decode(Integer.self, forKey: .integer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    floatType = try container.decode(FloatType.self, forKey: .floatType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    booleanType = try container.decode(BooleanType.self, forKey: .booleanType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    date = try container.decode(Date.self, forKey: .date)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    datetime = try container.decode(Datetime.self, forKey: .datetime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    json = try container.decode(Json.self, forKey: .json)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    file = try container.decode(File.self, forKey: .file)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(Url.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaobject = try container.decode(Metaobject.self, forKey: .metaobject)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(Product.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stringSingleLine, forKey: .stringSingleLine)
            
            
            
            
            try? container.encodeIfPresent(stringMultiLine, forKey: .stringMultiLine)
            
            
            
            
            try? container.encodeIfPresent(dropdown, forKey: .dropdown)
            
            
            
            
            try? container.encodeIfPresent(integer, forKey: .integer)
            
            
            
            
            try? container.encodeIfPresent(floatType, forKey: .floatType)
            
            
            
            
            try? container.encodeIfPresent(booleanType, forKey: .booleanType)
            
            
            
            
            try? container.encodeIfPresent(date, forKey: .date)
            
            
            
            
            try? container.encodeIfPresent(datetime, forKey: .datetime)
            
            
            
            
            try? container.encodeIfPresent(json, forKey: .json)
            
            
            
            
            try? container.encodeIfPresent(file, forKey: .file)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(metaobject, forKey: .metaobject)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
}


