

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: PdfConfig
        Used By: FileStorage
    */

    class PdfConfig: Codable {
        
        
        public var format: String?
        
        public var template: String?
        
        public var pdfTypeId: Int?
        
        public var countryCode: String?
        
        public var defaultTemplate: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case format = "format"
            
            case template = "template"
            
            case pdfTypeId = "pdf_type_id"
            
            case countryCode = "country_code"
            
            case defaultTemplate = "default_template"
            
        }

        public init(countryCode: String? = nil, defaultTemplate: Bool? = nil, format: String? = nil, pdfTypeId: Int? = nil, template: String? = nil) {
            
            self.format = format
            
            self.template = template
            
            self.pdfTypeId = pdfTypeId
            
            self.countryCode = countryCode
            
            self.defaultTemplate = defaultTemplate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    format = try container.decode(String.self, forKey: .format)
                
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
                    pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
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
                    defaultTemplate = try container.decode(Bool.self, forKey: .defaultTemplate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(defaultTemplate, forKey: .defaultTemplate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: PdfConfig
        Used By: FileStorage
    */

    class PdfConfig: Codable {
        
        
        public var format: String?
        
        public var template: String?
        
        public var pdfTypeId: Int?
        
        public var countryCode: String?
        
        public var defaultTemplate: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case format = "format"
            
            case template = "template"
            
            case pdfTypeId = "pdf_type_id"
            
            case countryCode = "country_code"
            
            case defaultTemplate = "default_template"
            
        }

        public init(countryCode: String? = nil, defaultTemplate: Bool? = nil, format: String? = nil, pdfTypeId: Int? = nil, template: String? = nil) {
            
            self.format = format
            
            self.template = template
            
            self.pdfTypeId = pdfTypeId
            
            self.countryCode = countryCode
            
            self.defaultTemplate = defaultTemplate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    format = try container.decode(String.self, forKey: .format)
                
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
                    pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
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
                    defaultTemplate = try container.decode(Bool.self, forKey: .defaultTemplate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(defaultTemplate, forKey: .defaultTemplate)
            
            
        }
        
    }
}


