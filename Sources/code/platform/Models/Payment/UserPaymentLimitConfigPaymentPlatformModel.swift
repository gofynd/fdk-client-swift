

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: UserPaymentLimitConfig
        Used By: Payment
    */

    class UserPaymentLimitConfig: Codable {
        
        
        public var advance: AdvancePaymentLimitConfig?
        
        public var cod: CODPaymentLimitConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case advance = "advance"
            
            case cod = "cod"
            
        }

        public init(advance: AdvancePaymentLimitConfig? = nil, cod: CODPaymentLimitConfig? = nil) {
            
            self.advance = advance
            
            self.cod = cod
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    advance = try container.decode(AdvancePaymentLimitConfig.self, forKey: .advance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cod = try container.decode(CODPaymentLimitConfig.self, forKey: .cod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
            
            
            try? container.encodeIfPresent(cod, forKey: .cod)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: UserPaymentLimitConfig
        Used By: Payment
    */

    class UserPaymentLimitConfig: Codable {
        
        
        public var advance: AdvancePaymentLimitConfig?
        
        public var cod: CODPaymentLimitConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case advance = "advance"
            
            case cod = "cod"
            
        }

        public init(advance: AdvancePaymentLimitConfig? = nil, cod: CODPaymentLimitConfig? = nil) {
            
            self.advance = advance
            
            self.cod = cod
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    advance = try container.decode(AdvancePaymentLimitConfig.self, forKey: .advance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cod = try container.decode(CODPaymentLimitConfig.self, forKey: .cod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
            
            
            try? container.encodeIfPresent(cod, forKey: .cod)
            
            
        }
        
    }
}


