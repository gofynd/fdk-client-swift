

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: savePdfPayload
        Used By: FileStorage
    */

    class savePdfPayload: Codable {
        
        
        public var pdfTypeId: Double?
        
        public var payload: PdfPayloadDetails?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfTypeId = "pdf_type_id"
            
            case payload = "payload"
            
            case countryCode = "country_code"
            
        }

        public init(countryCode: String? = nil, payload: PdfPayloadDetails? = nil, pdfTypeId: Double? = nil) {
            
            self.pdfTypeId = pdfTypeId
            
            self.payload = payload
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pdfTypeId = try container.decode(Double.self, forKey: .pdfTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payload = try container.decode(PdfPayloadDetails.self, forKey: .payload)
                
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
            
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: savePdfPayload
        Used By: FileStorage
    */

    class savePdfPayload: Codable {
        
        
        public var pdfTypeId: Double?
        
        public var payload: PdfPayloadDetails?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfTypeId = "pdf_type_id"
            
            case payload = "payload"
            
            case countryCode = "country_code"
            
        }

        public init(countryCode: String? = nil, payload: PdfPayloadDetails? = nil, pdfTypeId: Double? = nil) {
            
            self.pdfTypeId = pdfTypeId
            
            self.payload = payload
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pdfTypeId = try container.decode(Double.self, forKey: .pdfTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payload = try container.decode(PdfPayloadDetails.self, forKey: .payload)
                
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
            
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}


