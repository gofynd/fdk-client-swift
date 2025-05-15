

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: UpdateTemplate
        Used By: FileStorage
    */

    class UpdateTemplate: Codable {
        
        
        public var pdfTypeId: Int?
        
        public var format: String?
        
        public var countryCode: String?
        
        public var template: String?
        
        public var storeOs: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfTypeId = "pdf_type_id"
            
            case format = "format"
            
            case countryCode = "country_code"
            
            case template = "template"
            
            case storeOs = "store_os"
            
        }

        public init(countryCode: String? = nil, format: String? = nil, pdfTypeId: Int? = nil, storeOs: Bool? = nil, template: String? = nil) {
            
            self.pdfTypeId = pdfTypeId
            
            self.format = format
            
            self.countryCode = countryCode
            
            self.template = template
            
            self.storeOs = storeOs
            
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
                    format = try container.decode(String.self, forKey: .format)
                
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
                    template = try container.decode(String.self, forKey: .template)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
            
            
            try? container.encodeIfPresent(storeOs, forKey: .storeOs)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: UpdateTemplate
        Used By: FileStorage
    */

    class UpdateTemplate: Codable {
        
        
        public var pdfTypeId: Int?
        
        public var format: String?
        
        public var countryCode: String?
        
        public var template: String?
        
        public var storeOs: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfTypeId = "pdf_type_id"
            
            case format = "format"
            
            case countryCode = "country_code"
            
            case template = "template"
            
            case storeOs = "store_os"
            
        }

        public init(countryCode: String? = nil, format: String? = nil, pdfTypeId: Int? = nil, storeOs: Bool? = nil, template: String? = nil) {
            
            self.pdfTypeId = pdfTypeId
            
            self.format = format
            
            self.countryCode = countryCode
            
            self.template = template
            
            self.storeOs = storeOs
            
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
                    format = try container.decode(String.self, forKey: .format)
                
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
                    template = try container.decode(String.self, forKey: .template)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
            
            
            try? container.encodeIfPresent(storeOs, forKey: .storeOs)
            
            
        }
        
    }
}


