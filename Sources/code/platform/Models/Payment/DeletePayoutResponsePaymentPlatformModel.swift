

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: DeletePayoutResponse
        Used By: Payment
    */

    class DeletePayoutResponse: Codable {
        
        
        public var delete: Bool?
        
        public var uniqueTransferNo: String?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case delete = "delete"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case success = "success"
            
        }

        public init(delete: Bool? = nil, success: Bool, uniqueTransferNo: String? = nil) {
            
            self.delete = delete
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    delete = try container.decode(Bool.self, forKey: .delete)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(delete, forKey: .delete)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: DeletePayoutResponse
        Used By: Payment
    */

    class DeletePayoutResponse: Codable {
        
        
        public var delete: Bool?
        
        public var uniqueTransferNo: String?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case delete = "delete"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case success = "success"
            
        }

        public init(delete: Bool? = nil, success: Bool, uniqueTransferNo: String? = nil) {
            
            self.delete = delete
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    delete = try container.decode(Bool.self, forKey: .delete)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(delete, forKey: .delete)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


