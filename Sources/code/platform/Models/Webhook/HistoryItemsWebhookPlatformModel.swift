

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: HistoryItems
        Used By: Webhook
    */

    class HistoryItems: Codable {
        
        
        public var id: Int?
        
        public var association: HistoryAssociation?
        
        public var filters: HistoryFilters?
        
        public var filename: String?
        
        public var status: String?
        
        public var uploadServiceResponse: UploadServiceObject?
        
        public var createdOn: String?
        
        public var updatedOn: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case association = "association"
            
            case filters = "filters"
            
            case filename = "filename"
            
            case status = "status"
            
            case uploadServiceResponse = "upload_service_response"
            
            case createdOn = "created_on"
            
            case updatedOn = "updated_on"
            
            case message = "message"
            
        }

        public init(association: HistoryAssociation? = nil, createdOn: String? = nil, filename: String? = nil, filters: HistoryFilters? = nil, id: Int? = nil, message: String? = nil, status: String? = nil, updatedOn: String? = nil, uploadServiceResponse: UploadServiceObject? = nil) {
            
            self.id = id
            
            self.association = association
            
            self.filters = filters
            
            self.filename = filename
            
            self.status = status
            
            self.uploadServiceResponse = uploadServiceResponse
            
            self.createdOn = createdOn
            
            self.updatedOn = updatedOn
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    association = try container.decode(HistoryAssociation.self, forKey: .association)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode(HistoryFilters.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filename = try container.decode(String.self, forKey: .filename)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uploadServiceResponse = try container.decode(UploadServiceObject.self, forKey: .uploadServiceResponse)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedOn = try container.decode(String.self, forKey: .updatedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(association, forKey: .association)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(filename, forKey: .filename)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(uploadServiceResponse, forKey: .uploadServiceResponse)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}




