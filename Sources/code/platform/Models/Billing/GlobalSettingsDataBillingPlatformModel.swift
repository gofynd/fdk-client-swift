

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: GlobalSettingsData
        Used By: Billing
    */

    class GlobalSettingsData: Codable {
        
        
        public var payment: GlobalSettingsPayment?
        
        public var freezePanel: Bool?
        
        public var id: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case payment = "payment"
            
            case freezePanel = "freeze_panel"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
        }

        public init(createdAt: String? = nil, freezePanel: Bool? = nil, modifiedAt: String? = nil, payment: GlobalSettingsPayment? = nil, id: String? = nil) {
            
            self.payment = payment
            
            self.freezePanel = freezePanel
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    payment = try container.decode(GlobalSettingsPayment.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    freezePanel = try container.decode(Bool.self, forKey: .freezePanel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(freezePanel, forKey: .freezePanel)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
        }
        
    }
}




