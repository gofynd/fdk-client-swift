

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundOptionsLimit
        Used By: Payment
    */

    class RefundOptionsLimit: Codable {
        
        
        public var bank: Int?
        
        public var wallet: Int?
        
        public var upi: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case bank = "bank"
            
            case wallet = "wallet"
            
            case upi = "upi"
            
        }

        public init(bank: Int? = nil, upi: Int? = nil, wallet: Int? = nil) {
            
            self.bank = bank
            
            self.wallet = wallet
            
            self.upi = upi
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bank = try container.decode(Int.self, forKey: .bank)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wallet = try container.decode(Int.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upi = try container.decode(Int.self, forKey: .upi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bank, forKey: .bank)
            
            
            
            
            try? container.encodeIfPresent(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundOptionsLimit
        Used By: Payment
    */

    class RefundOptionsLimit: Codable {
        
        
        public var bank: Int?
        
        public var wallet: Int?
        
        public var upi: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case bank = "bank"
            
            case wallet = "wallet"
            
            case upi = "upi"
            
        }

        public init(bank: Int? = nil, upi: Int? = nil, wallet: Int? = nil) {
            
            self.bank = bank
            
            self.wallet = wallet
            
            self.upi = upi
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bank = try container.decode(Int.self, forKey: .bank)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wallet = try container.decode(Int.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upi = try container.decode(Int.self, forKey: .upi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bank, forKey: .bank)
            
            
            
            
            try? container.encodeIfPresent(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
        }
        
    }
}


