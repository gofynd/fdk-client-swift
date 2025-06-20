

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EntityStatusDataSchema
        Used By: Order
    */

    class EntityStatusDataSchema: Codable {
        
        
        public var sellerQcDetails: [SellerQCDetailsSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerQcDetails = "seller_qc_details"
            
        }

        public init(sellerQcDetails: [SellerQCDetailsSchema]? = nil) {
            
            self.sellerQcDetails = sellerQcDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerQcDetails = try container.decode([SellerQCDetailsSchema].self, forKey: .sellerQcDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerQcDetails, forKey: .sellerQcDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EntityStatusDataSchema
        Used By: Order
    */

    class EntityStatusDataSchema: Codable {
        
        
        public var sellerQcDetails: [SellerQCDetailsSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerQcDetails = "seller_qc_details"
            
        }

        public init(sellerQcDetails: [SellerQCDetailsSchema]? = nil) {
            
            self.sellerQcDetails = sellerQcDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerQcDetails = try container.decode([SellerQCDetailsSchema].self, forKey: .sellerQcDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerQcDetails, forKey: .sellerQcDetails)
            
            
        }
        
    }
}


