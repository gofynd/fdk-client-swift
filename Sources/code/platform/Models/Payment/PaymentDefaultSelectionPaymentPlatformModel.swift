

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentDefaultSelection
        Used By: Payment
    */

    class PaymentDefaultSelection: Codable {
        
        
        public var mode: String?
        
        public var identifier: String?
        
        public var skip: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case identifier = "identifier"
            
            case skip = "skip"
            
        }

        public init(identifier: String? = nil, mode: String? = nil, skip: Bool? = nil) {
            
            self.mode = mode
            
            self.identifier = identifier
            
            self.skip = skip
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skip = try container.decode(Bool.self, forKey: .skip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(skip, forKey: .skip)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentDefaultSelection
        Used By: Payment
    */

    class PaymentDefaultSelection: Codable {
        
        
        public var mode: String?
        
        public var identifier: String?
        
        public var skip: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case identifier = "identifier"
            
            case skip = "skip"
            
        }

        public init(identifier: String? = nil, mode: String? = nil, skip: Bool? = nil) {
            
            self.mode = mode
            
            self.identifier = identifier
            
            self.skip = skip
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skip = try container.decode(Bool.self, forKey: .skip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(skip, forKey: .skip)
            
            
        }
        
    }
}


