

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundStatus
        Used By: Order
    */
    class RefundStatus: Codable {
        
        public var id: String?
        
        public var status: String?
        
        public var createdTs: String?
        
        public var updatedTs: String?
        
        public var updatedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case status = "status"
            
            case createdTs = "created_ts"
            
            case updatedTs = "updated_ts"
            
            case updatedBy = "updated_by"
            
        }

        public init(createdTs: String? = nil, id: String? = nil, status: String? = nil, updatedBy: String? = nil, updatedTs: String? = nil) {
            
            self.id = id
            
            self.status = status
            
            self.createdTs = createdTs
            
            self.updatedTs = updatedTs
            
            self.updatedBy = updatedBy
            
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
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdTs = try container.decode(String.self, forKey: .createdTs)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                updatedTs = try container.decode(String.self, forKey: .updatedTs)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                updatedBy = try container.decode(String.self, forKey: .updatedBy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            try? container.encodeIfPresent(updatedTs, forKey: .updatedTs)
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
        }
        
    }
}
