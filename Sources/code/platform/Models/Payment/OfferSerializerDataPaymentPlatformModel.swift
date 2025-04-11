

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OfferSerializerData
        Used By: Payment
    */

    class OfferSerializerData: Codable {
        
        
        public var offerAmount: Double?
        
        public var offerCode: String?
        
        public var offerDescription: String?
        
        public var offerId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case offerAmount = "offer_amount"
            
            case offerCode = "offer_code"
            
            case offerDescription = "offer_description"
            
            case offerId = "offer_id"
            
        }

        public init(offerAmount: Double? = nil, offerCode: String? = nil, offerDescription: String? = nil, offerId: String? = nil) {
            
            self.offerAmount = offerAmount
            
            self.offerCode = offerCode
            
            self.offerDescription = offerDescription
            
            self.offerId = offerId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    offerAmount = try container.decode(Double.self, forKey: .offerAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerCode = try container.decode(String.self, forKey: .offerCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerDescription = try container.decode(String.self, forKey: .offerDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerId = try container.decode(String.self, forKey: .offerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(offerAmount, forKey: .offerAmount)
            
            
            
            
            try? container.encodeIfPresent(offerCode, forKey: .offerCode)
            
            
            
            
            try? container.encodeIfPresent(offerDescription, forKey: .offerDescription)
            
            
            
            
            try? container.encodeIfPresent(offerId, forKey: .offerId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OfferSerializerData
        Used By: Payment
    */

    class OfferSerializerData: Codable {
        
        
        public var offerAmount: Double?
        
        public var offerCode: String?
        
        public var offerDescription: String?
        
        public var offerId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case offerAmount = "offer_amount"
            
            case offerCode = "offer_code"
            
            case offerDescription = "offer_description"
            
            case offerId = "offer_id"
            
        }

        public init(offerAmount: Double? = nil, offerCode: String? = nil, offerDescription: String? = nil, offerId: String? = nil) {
            
            self.offerAmount = offerAmount
            
            self.offerCode = offerCode
            
            self.offerDescription = offerDescription
            
            self.offerId = offerId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    offerAmount = try container.decode(Double.self, forKey: .offerAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerCode = try container.decode(String.self, forKey: .offerCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerDescription = try container.decode(String.self, forKey: .offerDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerId = try container.decode(String.self, forKey: .offerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(offerAmount, forKey: .offerAmount)
            
            
            
            
            try? container.encodeIfPresent(offerCode, forKey: .offerCode)
            
            
            
            
            try? container.encodeIfPresent(offerDescription, forKey: .offerDescription)
            
            
            
            
            try? container.encodeIfPresent(offerId, forKey: .offerId)
            
            
        }
        
    }
}


