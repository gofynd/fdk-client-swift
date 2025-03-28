

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AppliedOfferSerializerData
        Used By: Payment
    */

    class AppliedOfferSerializerData: Codable {
        
        
        public var totalAppliedOfferAmount: Double?
        
        public var offerList: [OfferSerializerData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalAppliedOfferAmount = "total_applied_offer_amount"
            
            case offerList = "offer_list"
            
        }

        public init(offerList: [OfferSerializerData]? = nil, totalAppliedOfferAmount: Double? = nil) {
            
            self.totalAppliedOfferAmount = totalAppliedOfferAmount
            
            self.offerList = offerList
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalAppliedOfferAmount = try container.decode(Double.self, forKey: .totalAppliedOfferAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerList = try container.decode([OfferSerializerData].self, forKey: .offerList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalAppliedOfferAmount, forKey: .totalAppliedOfferAmount)
            
            
            
            
            try? container.encodeIfPresent(offerList, forKey: .offerList)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AppliedOfferSerializerData
        Used By: Payment
    */

    class AppliedOfferSerializerData: Codable {
        
        
        public var totalAppliedOfferAmount: Double?
        
        public var offerList: [OfferSerializerData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalAppliedOfferAmount = "total_applied_offer_amount"
            
            case offerList = "offer_list"
            
        }

        public init(offerList: [OfferSerializerData]? = nil, totalAppliedOfferAmount: Double? = nil) {
            
            self.totalAppliedOfferAmount = totalAppliedOfferAmount
            
            self.offerList = offerList
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalAppliedOfferAmount = try container.decode(Double.self, forKey: .totalAppliedOfferAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerList = try container.decode([OfferSerializerData].self, forKey: .offerList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalAppliedOfferAmount, forKey: .totalAppliedOfferAmount)
            
            
            
            
            try? container.encodeIfPresent(offerList, forKey: .offerList)
            
            
        }
        
    }
}


