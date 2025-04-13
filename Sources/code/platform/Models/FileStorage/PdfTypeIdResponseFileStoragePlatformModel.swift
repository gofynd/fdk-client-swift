

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: PdfTypeIdResponse
        Used By: FileStorage
    */

    class PdfTypeIdResponse: Codable {
        
        
        public var storeOs: Bool?
        
        public var countryCode: String?
        
        public var pdfTypeId: Int?
        
        public var v: Int?
        
        public var format: [String]?
        
        public var name: String?
        
        public var visibility: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeOs = "store_os"
            
            case countryCode = "country_code"
            
            case pdfTypeId = "pdf_type_id"
            
            case v = "__v"
            
            case format = "format"
            
            case name = "name"
            
            case visibility = "visibility"
            
        }

        public init(countryCode: String? = nil, format: [String]? = nil, name: String? = nil, pdfTypeId: Int? = nil, storeOs: Bool? = nil, visibility: Bool? = nil, v: Int? = nil) {
            
            self.storeOs = storeOs
            
            self.countryCode = countryCode
            
            self.pdfTypeId = pdfTypeId
            
            self.v = v
            
            self.format = format
            
            self.name = name
            
            self.visibility = visibility
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
            
                do {
                    pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeOs, forKey: .storeOs)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: PdfTypeIdResponse
        Used By: FileStorage
    */

    class PdfTypeIdResponse: Codable {
        
        
        public var storeOs: Bool?
        
        public var countryCode: String?
        
        public var pdfTypeId: Int?
        
        public var v: Int?
        
        public var format: [String]?
        
        public var name: String?
        
        public var visibility: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeOs = "store_os"
            
            case countryCode = "country_code"
            
            case pdfTypeId = "pdf_type_id"
            
            case v = "__v"
            
            case format = "format"
            
            case name = "name"
            
            case visibility = "visibility"
            
        }

        public init(countryCode: String? = nil, format: [String]? = nil, name: String? = nil, pdfTypeId: Int? = nil, storeOs: Bool? = nil, visibility: Bool? = nil, v: Int? = nil) {
            
            self.storeOs = storeOs
            
            self.countryCode = countryCode
            
            self.pdfTypeId = pdfTypeId
            
            self.v = v
            
            self.format = format
            
            self.name = name
            
            self.visibility = visibility
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
            
                do {
                    pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeOs, forKey: .storeOs)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
        }
        
    }
}


