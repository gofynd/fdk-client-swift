

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: BeneficiaryRefundOptions
        Used By: Payment
    */

    class BeneficiaryRefundOptions: Codable {
        
        
        public var bank: [OrderBeneficiaryDetails]?
        
        public var wallet: WalletBeneficiaryDetails?
        
        public var upi: UpiBeneficiaryDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case bank = "bank"
            
            case wallet = "wallet"
            
            case upi = "upi"
            
        }

        public init(bank: [OrderBeneficiaryDetails]? = nil, upi: UpiBeneficiaryDetails? = nil, wallet: WalletBeneficiaryDetails? = nil) {
            
            self.bank = bank
            
            self.wallet = wallet
            
            self.upi = upi
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bank = try container.decode([OrderBeneficiaryDetails].self, forKey: .bank)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wallet = try container.decode(WalletBeneficiaryDetails.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upi = try container.decode(UpiBeneficiaryDetails.self, forKey: .upi)
                
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
        Model: BeneficiaryRefundOptions
        Used By: Payment
    */

    class BeneficiaryRefundOptions: Codable {
        
        
        public var bank: [OrderBeneficiaryDetails]?
        
        public var wallet: WalletBeneficiaryDetails?
        
        public var upi: UpiBeneficiaryDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case bank = "bank"
            
            case wallet = "wallet"
            
            case upi = "upi"
            
        }

        public init(bank: [OrderBeneficiaryDetails]? = nil, upi: UpiBeneficiaryDetails? = nil, wallet: WalletBeneficiaryDetails? = nil) {
            
            self.bank = bank
            
            self.wallet = wallet
            
            self.upi = upi
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bank = try container.decode([OrderBeneficiaryDetails].self, forKey: .bank)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wallet = try container.decode(WalletBeneficiaryDetails.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upi = try container.decode(UpiBeneficiaryDetails.self, forKey: .upi)
                
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


