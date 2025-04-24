

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentConfirmationElement
        Used By: Payment
    */

    class PaymentConfirmationElement: Codable {
        
        
        public var isRequired: Bool?
        
        public var displayLabel: String?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isRequired = "is_required"
            
            case displayLabel = "display_label"
            
            case slug = "slug"
            
        }

        public init(displayLabel: String? = nil, isRequired: Bool? = nil, slug: String? = nil) {
            
            self.isRequired = isRequired
            
            self.displayLabel = displayLabel
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isRequired = try container.decode(Bool.self, forKey: .isRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayLabel = try container.decode(String.self, forKey: .displayLabel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isRequired, forKey: .isRequired)
            
            
            
            
            try? container.encodeIfPresent(displayLabel, forKey: .displayLabel)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentConfirmationElement
        Used By: Payment
    */

    class PaymentConfirmationElement: Codable {
        
        
        public var isRequired: Bool?
        
        public var displayLabel: String?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isRequired = "is_required"
            
            case displayLabel = "display_label"
            
            case slug = "slug"
            
        }

        public init(displayLabel: String? = nil, isRequired: Bool? = nil, slug: String? = nil) {
            
            self.isRequired = isRequired
            
            self.displayLabel = displayLabel
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isRequired = try container.decode(Bool.self, forKey: .isRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayLabel = try container.decode(String.self, forKey: .displayLabel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isRequired, forKey: .isRequired)
            
            
            
            
            try? container.encodeIfPresent(displayLabel, forKey: .displayLabel)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}


