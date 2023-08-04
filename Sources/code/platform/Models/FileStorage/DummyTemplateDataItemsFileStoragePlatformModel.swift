

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: DummyTemplateDataItems
        Used By: FileStorage
    */

    class DummyTemplateDataItems: Codable {
        
        
        public var id: String?
        
        public var pdfTypeId: Double?
        
        public var payload: DummyTemplateDataPayload
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case pdfTypeId = "pdf_type_id"
            
            case payload = "payload"
            
            case v = "__v"
            
        }

        public init(payload: DummyTemplateDataPayload, pdfTypeId: Double? = nil, id: String? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.pdfTypeId = pdfTypeId
            
            self.payload = payload
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pdfTypeId = try container.decode(Double.self, forKey: .pdfTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                payload = try container.decode(DummyTemplateDataPayload.self, forKey: .payload)
                
            
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: DummyTemplateDataItems
        Used By: FileStorage
    */

    class DummyTemplateDataItems: Codable {
        
        
        public var id: String?
        
        public var pdfTypeId: Double?
        
        public var payload: DummyTemplateDataPayload
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case pdfTypeId = "pdf_type_id"
            
            case payload = "payload"
            
            case v = "__v"
            
        }

        public init(payload: DummyTemplateDataPayload, pdfTypeId: Double? = nil, id: String? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.pdfTypeId = pdfTypeId
            
            self.payload = payload
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pdfTypeId = try container.decode(Double.self, forKey: .pdfTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                payload = try container.decode(DummyTemplateDataPayload.self, forKey: .payload)
                
            
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}


