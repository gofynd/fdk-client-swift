

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: ApplicationLegal
        Used By: Content
    */
    class ApplicationLegal: Codable {
        
        public var application: String?
        
        public var tnc: String?
        
        public var policy: String?
        
        public var shipping: String?
        
        public var returns: String?
        
        public var faq: [ApplicationLegalFAQ]?
        
        public var id: String?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case tnc = "tnc"
            
            case policy = "policy"
            
            case shipping = "shipping"
            
            case returns = "returns"
            
            case faq = "faq"
            
            case id = "_id"
            
            case updatedAt = "updated_at"
            
            case createdAt = "created_at"
            
            case v = "__v"
            
        }

        public init(application: String? = nil, createdAt: String? = nil, faq: [ApplicationLegalFAQ]? = nil, policy: String? = nil, returns: String? = nil, shipping: String? = nil, tnc: String? = nil, updatedAt: String? = nil, id: String? = nil, v: Double? = nil) {
            
            self.application = application
            
            self.tnc = tnc
            
            self.policy = policy
            
            self.shipping = shipping
            
            self.returns = returns
            
            self.faq = faq
            
            self.id = id
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                application = try container.decode(String.self, forKey: .application)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tnc = try container.decode(String.self, forKey: .tnc)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                policy = try container.decode(String.self, forKey: .policy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipping = try container.decode(String.self, forKey: .shipping)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returns = try container.decode(String.self, forKey: .returns)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                faq = try container.decode([ApplicationLegalFAQ].self, forKey: .faq)
            
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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
            
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
                v = try container.decode(Double.self, forKey: .v)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            try? container.encodeIfPresent(tnc, forKey: .tnc)
            
            
            
            try? container.encodeIfPresent(policy, forKey: .policy)
            
            
            
            try? container.encodeIfPresent(shipping, forKey: .shipping)
            
            
            
            try? container.encodeIfPresent(returns, forKey: .returns)
            
            
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}
