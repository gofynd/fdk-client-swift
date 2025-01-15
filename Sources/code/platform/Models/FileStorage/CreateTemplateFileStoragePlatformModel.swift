

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: CreateTemplate
        Used By: FileStorage
    */

    class CreateTemplate: Codable {
        
        
        public var pdfTypeId: Int
        
        public var format: String
        
        public var countryCode: String
        
        public var template: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfTypeId = "pdf_type_id"
            
            case format = "format"
            
            case countryCode = "country_code"
            
            case template = "template"
            
        }

        public init(countryCode: String, format: String, pdfTypeId: Int, template: String? = nil) {
            
            self.pdfTypeId = pdfTypeId
            
            self.format = format
            
            self.countryCode = countryCode
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
            
            
            
                format = try container.decode(String.self, forKey: .format)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                do {
                    template = try container.decode(String.self, forKey: .template)
                
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
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: CreateTemplate
        Used By: FileStorage
    */

    class CreateTemplate: Codable {
        
        
        public var pdfTypeId: Int
        
        public var format: String
        
        public var countryCode: String
        
        public var template: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfTypeId = "pdf_type_id"
            
            case format = "format"
            
            case countryCode = "country_code"
            
            case template = "template"
            
        }

        public init(countryCode: String, format: String, pdfTypeId: Int, template: String? = nil) {
            
            self.pdfTypeId = pdfTypeId
            
            self.format = format
            
            self.countryCode = countryCode
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
            
            
            
                format = try container.decode(String.self, forKey: .format)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                do {
                    template = try container.decode(String.self, forKey: .template)
                
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
            
            
        }
        
    }
}


