

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DPDetailsData
        Used By: Order
    */

    class DPDetailsData: Codable {
        
        
        public var pincode: String?
        
        public var trackUrl: String?
        
        public var ewayBillId: String?
        
        public var id: Int?
        
        public var country: String?
        
        public var awbNo: String?
        
        public var gstTag: String?
        
        public var name: String?
        
        public var dpCharges: Double?
        
        public var dpReturnCharges: Double?
        
        public var amountHandlingCharges: Double?
        
        public var ewayBillNumber: Double?
        
        public var dpOtp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case trackUrl = "track_url"
            
            case ewayBillId = "eway_bill_id"
            
            case id = "id"
            
            case country = "country"
            
            case awbNo = "awb_no"
            
            case gstTag = "gst_tag"
            
            case name = "name"
            
            case dpCharges = "dp_charges"
            
            case dpReturnCharges = "dp_return_charges"
            
            case amountHandlingCharges = "amount_handling_charges"
            
            case ewayBillNumber = "eway_bill_number"
            
            case dpOtp = "dp_otp"
            
        }

        public init(amountHandlingCharges: Double? = nil, awbNo: String? = nil, country: String? = nil, dpCharges: Double? = nil, dpOtp: String? = nil, dpReturnCharges: Double? = nil, ewayBillId: String? = nil, ewayBillNumber: Double? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            
            self.pincode = pincode
            
            self.trackUrl = trackUrl
            
            self.ewayBillId = ewayBillId
            
            self.id = id
            
            self.country = country
            
            self.awbNo = awbNo
            
            self.gstTag = gstTag
            
            self.name = name
            
            self.dpCharges = dpCharges
            
            self.dpReturnCharges = dpReturnCharges
            
            self.amountHandlingCharges = amountHandlingCharges
            
            self.ewayBillNumber = ewayBillNumber
            
            self.dpOtp = dpOtp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackUrl = try container.decode(String.self, forKey: .trackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillId = try container.decode(String.self, forKey: .ewayBillId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNo = try container.decode(String.self, forKey: .awbNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpCharges = try container.decode(Double.self, forKey: .dpCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpReturnCharges = try container.decode(Double.self, forKey: .dpReturnCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountHandlingCharges = try container.decode(Double.self, forKey: .amountHandlingCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillNumber = try container.decode(Double.self, forKey: .ewayBillNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpOtp = try container.decode(String.self, forKey: .dpOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)
            
            
            
            
            try? container.encodeIfPresent(ewayBillId, forKey: .ewayBillId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(awbNo, forKey: .awbNo)
            
            
            
            
            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)
            
            
            
            
            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)
            
            
            
            
            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)
            
            
            
            
            try? container.encodeIfPresent(ewayBillNumber, forKey: .ewayBillNumber)
            
            
            
            
            try? container.encodeIfPresent(dpOtp, forKey: .dpOtp)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DPDetailsData
        Used By: Order
    */

    class DPDetailsData: Codable {
        
        
        public var pincode: String?
        
        public var trackUrl: String?
        
        public var ewayBillId: String?
        
        public var id: Int?
        
        public var country: String?
        
        public var awbNo: String?
        
        public var gstTag: String?
        
        public var name: String?
        
        public var dpCharges: Double?
        
        public var dpReturnCharges: Double?
        
        public var amountHandlingCharges: Double?
        
        public var ewayBillNumber: Double?
        
        public var dpOtp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case trackUrl = "track_url"
            
            case ewayBillId = "eway_bill_id"
            
            case id = "id"
            
            case country = "country"
            
            case awbNo = "awb_no"
            
            case gstTag = "gst_tag"
            
            case name = "name"
            
            case dpCharges = "dp_charges"
            
            case dpReturnCharges = "dp_return_charges"
            
            case amountHandlingCharges = "amount_handling_charges"
            
            case ewayBillNumber = "eway_bill_number"
            
            case dpOtp = "dp_otp"
            
        }

        public init(amountHandlingCharges: Double? = nil, awbNo: String? = nil, country: String? = nil, dpCharges: Double? = nil, dpOtp: String? = nil, dpReturnCharges: Double? = nil, ewayBillId: String? = nil, ewayBillNumber: Double? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            
            self.pincode = pincode
            
            self.trackUrl = trackUrl
            
            self.ewayBillId = ewayBillId
            
            self.id = id
            
            self.country = country
            
            self.awbNo = awbNo
            
            self.gstTag = gstTag
            
            self.name = name
            
            self.dpCharges = dpCharges
            
            self.dpReturnCharges = dpReturnCharges
            
            self.amountHandlingCharges = amountHandlingCharges
            
            self.ewayBillNumber = ewayBillNumber
            
            self.dpOtp = dpOtp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackUrl = try container.decode(String.self, forKey: .trackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillId = try container.decode(String.self, forKey: .ewayBillId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNo = try container.decode(String.self, forKey: .awbNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpCharges = try container.decode(Double.self, forKey: .dpCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpReturnCharges = try container.decode(Double.self, forKey: .dpReturnCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountHandlingCharges = try container.decode(Double.self, forKey: .amountHandlingCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillNumber = try container.decode(Double.self, forKey: .ewayBillNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpOtp = try container.decode(String.self, forKey: .dpOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)
            
            
            
            
            try? container.encodeIfPresent(ewayBillId, forKey: .ewayBillId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(awbNo, forKey: .awbNo)
            
            
            
            
            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)
            
            
            
            
            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)
            
            
            
            
            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)
            
            
            
            
            try? container.encodeIfPresent(ewayBillNumber, forKey: .ewayBillNumber)
            
            
            
            
            try? container.encodeIfPresent(dpOtp, forKey: .dpOtp)
            
            
        }
        
    }
}


