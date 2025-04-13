

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: UpdatePdfTypeRequest
        Used By: FileStorage
    */

    class UpdatePdfTypeRequest: Codable {
        
        
        public var pdfTypeId: Int?
        
        public var name: String?
        
        public var format: [String]?
        
        public var visibility: Bool?
        
        public var schema: [String: Any]?
        
        public var storeOs: Bool?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfTypeId = "pdf_type_id"
            
            case name = "name"
            
            case format = "format"
            
            case visibility = "visibility"
            
            case schema = "schema"
            
            case storeOs = "store_os"
            
            case countryCode = "country_code"
            
        }

        public init(countryCode: String? = nil, format: [String]? = nil, name: String? = nil, pdfTypeId: Int? = nil, schema: [String: Any]? = nil, storeOs: Bool? = nil, visibility: Bool? = nil) {
            
            self.pdfTypeId = pdfTypeId
            
            self.name = name
            
            self.format = format
            
            self.visibility = visibility
            
            self.schema = schema
            
            self.storeOs = storeOs
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    format = try container.decode([String].self, forKey: .format)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visibility = try container.decode(Bool.self, forKey: .visibility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schema = try container.decode([String: Any].self, forKey: .schema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeOs = try container.decode(Bool.self, forKey: .storeOs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(storeOs, forKey: .storeOs)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: UpdatePdfTypeRequest
        Used By: FileStorage
    */

    class UpdatePdfTypeRequest: Codable {
        
        
        public var pdfTypeId: Int?
        
        public var name: String?
        
        public var format: [String]?
        
        public var visibility: Bool?
        
        public var schema: [String: Any]?
        
        public var storeOs: Bool?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfTypeId = "pdf_type_id"
            
            case name = "name"
            
            case format = "format"
            
            case visibility = "visibility"
            
            case schema = "schema"
            
            case storeOs = "store_os"
            
            case countryCode = "country_code"
            
        }

        public init(countryCode: String? = nil, format: [String]? = nil, name: String? = nil, pdfTypeId: Int? = nil, schema: [String: Any]? = nil, storeOs: Bool? = nil, visibility: Bool? = nil) {
            
            self.pdfTypeId = pdfTypeId
            
            self.name = name
            
            self.format = format
            
            self.visibility = visibility
            
            self.schema = schema
            
            self.storeOs = storeOs
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    format = try container.decode([String].self, forKey: .format)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visibility = try container.decode(Bool.self, forKey: .visibility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schema = try container.decode([String: Any].self, forKey: .schema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeOs = try container.decode(Bool.self, forKey: .storeOs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(storeOs, forKey: .storeOs)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}


