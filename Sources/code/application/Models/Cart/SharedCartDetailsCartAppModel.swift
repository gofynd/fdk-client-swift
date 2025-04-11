

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: SharedCartDetails
        Used By: Cart
    */
    class SharedCartDetails: Codable {
        
        public var token: String?
        
        public var user: [String: Any]?
        
        public var createdOn: String?
        
        public var source: [String: Any]?
        
        public var orderingStore: Int?
        
        public var selectedStaff: String?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
            case user = "user"
            
            case createdOn = "created_on"
            
            case source = "source"
            
            case orderingStore = "ordering_store"
            
            case selectedStaff = "selected_staff"
            
            case meta = "meta"
            
        }

        public init(createdOn: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, selectedStaff: String? = nil, source: [String: Any]? = nil, token: String? = nil, user: [String: Any]? = nil) {
            
            self.token = token
            
            self.user = user
            
            self.createdOn = createdOn
            
            self.source = source
            
            self.orderingStore = orderingStore
            
            self.selectedStaff = selectedStaff
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                token = try container.decode(String.self, forKey: .token)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                user = try container.decode([String: Any].self, forKey: .user)
            
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
                source = try container.decode([String: Any].self, forKey: .source)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                selectedStaff = try container.decode(String.self, forKey: .selectedStaff)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            try? container.encodeIfPresent(selectedStaff, forKey: .selectedStaff)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
