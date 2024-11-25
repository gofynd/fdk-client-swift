

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerSchemeV2Features
        Used By: Serviceability
    */

    class CourierPartnerSchemeV2Features: Codable {
        
        
        public var doorstepQc: Bool?
        
        public var qr: Bool?
        
        public var mps: Bool?
        
        public var ndr: Bool?
        
        public var dangerousGoods: Bool?
        
        public var fragileGoods: Bool?
        
        public var restrictedGoods: Bool?
        
        public var coldStorageGoods: Bool?
        
        public var doorstepExchange: Bool?
        
        public var doorstepReturn: Bool?
        
        public var productInstallation: Bool?
        
        public var openboxDelivery: Bool?
        
        public var multiPickSingleDrop: Bool?
        
        public var singlePickMultiDrop: Bool?
        
        public var multiPickMultiDrop: Bool?
        
        public var ewaybill: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case doorstepQc = "doorstep_qc"
            
            case qr = "qr"
            
            case mps = "mps"
            
            case ndr = "ndr"
            
            case dangerousGoods = "dangerous_goods"
            
            case fragileGoods = "fragile_goods"
            
            case restrictedGoods = "restricted_goods"
            
            case coldStorageGoods = "cold_storage_goods"
            
            case doorstepExchange = "doorstep_exchange"
            
            case doorstepReturn = "doorstep_return"
            
            case productInstallation = "product_installation"
            
            case openboxDelivery = "openbox_delivery"
            
            case multiPickSingleDrop = "multi_pick_single_drop"
            
            case singlePickMultiDrop = "single_pick_multi_drop"
            
            case multiPickMultiDrop = "multi_pick_multi_drop"
            
            case ewaybill = "ewaybill"
            
        }

        public init(coldStorageGoods: Bool? = nil, dangerousGoods: Bool? = nil, doorstepExchange: Bool? = nil, doorstepQc: Bool? = nil, doorstepReturn: Bool? = nil, ewaybill: Bool? = nil, fragileGoods: Bool? = nil, mps: Bool? = nil, multiPickMultiDrop: Bool? = nil, multiPickSingleDrop: Bool? = nil, ndr: Bool? = nil, openboxDelivery: Bool? = nil, productInstallation: Bool? = nil, qr: Bool? = nil, restrictedGoods: Bool? = nil, singlePickMultiDrop: Bool? = nil) {
            
            self.doorstepQc = doorstepQc
            
            self.qr = qr
            
            self.mps = mps
            
            self.ndr = ndr
            
            self.dangerousGoods = dangerousGoods
            
            self.fragileGoods = fragileGoods
            
            self.restrictedGoods = restrictedGoods
            
            self.coldStorageGoods = coldStorageGoods
            
            self.doorstepExchange = doorstepExchange
            
            self.doorstepReturn = doorstepReturn
            
            self.productInstallation = productInstallation
            
            self.openboxDelivery = openboxDelivery
            
            self.multiPickSingleDrop = multiPickSingleDrop
            
            self.singlePickMultiDrop = singlePickMultiDrop
            
            self.multiPickMultiDrop = multiPickMultiDrop
            
            self.ewaybill = ewaybill
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    doorstepQc = try container.decode(Bool.self, forKey: .doorstepQc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qr = try container.decode(Bool.self, forKey: .qr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mps = try container.decode(Bool.self, forKey: .mps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ndr = try container.decode(Bool.self, forKey: .ndr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dangerousGoods = try container.decode(Bool.self, forKey: .dangerousGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fragileGoods = try container.decode(Bool.self, forKey: .fragileGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictedGoods = try container.decode(Bool.self, forKey: .restrictedGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coldStorageGoods = try container.decode(Bool.self, forKey: .coldStorageGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    doorstepExchange = try container.decode(Bool.self, forKey: .doorstepExchange)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    doorstepReturn = try container.decode(Bool.self, forKey: .doorstepReturn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productInstallation = try container.decode(Bool.self, forKey: .productInstallation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    openboxDelivery = try container.decode(Bool.self, forKey: .openboxDelivery)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiPickSingleDrop = try container.decode(Bool.self, forKey: .multiPickSingleDrop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    singlePickMultiDrop = try container.decode(Bool.self, forKey: .singlePickMultiDrop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiPickMultiDrop = try container.decode(Bool.self, forKey: .multiPickMultiDrop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewaybill = try container.decode(Bool.self, forKey: .ewaybill)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(doorstepQc, forKey: .doorstepQc)
            
            
            
            
            try? container.encodeIfPresent(qr, forKey: .qr)
            
            
            
            
            try? container.encodeIfPresent(mps, forKey: .mps)
            
            
            
            
            try? container.encodeIfPresent(ndr, forKey: .ndr)
            
            
            
            
            try? container.encodeIfPresent(dangerousGoods, forKey: .dangerousGoods)
            
            
            
            
            try? container.encodeIfPresent(fragileGoods, forKey: .fragileGoods)
            
            
            
            
            try? container.encodeIfPresent(restrictedGoods, forKey: .restrictedGoods)
            
            
            
            
            try? container.encodeIfPresent(coldStorageGoods, forKey: .coldStorageGoods)
            
            
            
            
            try? container.encodeIfPresent(doorstepExchange, forKey: .doorstepExchange)
            
            
            
            
            try? container.encodeIfPresent(doorstepReturn, forKey: .doorstepReturn)
            
            
            
            
            try? container.encodeIfPresent(productInstallation, forKey: .productInstallation)
            
            
            
            
            try? container.encodeIfPresent(openboxDelivery, forKey: .openboxDelivery)
            
            
            
            
            try? container.encodeIfPresent(multiPickSingleDrop, forKey: .multiPickSingleDrop)
            
            
            
            
            try? container.encodeIfPresent(singlePickMultiDrop, forKey: .singlePickMultiDrop)
            
            
            
            
            try? container.encodeIfPresent(multiPickMultiDrop, forKey: .multiPickMultiDrop)
            
            
            
            
            try? container.encodeIfPresent(ewaybill, forKey: .ewaybill)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerSchemeV2Features
        Used By: Serviceability
    */

    class CourierPartnerSchemeV2Features: Codable {
        
        
        public var doorstepQc: Bool?
        
        public var qr: Bool?
        
        public var mps: Bool?
        
        public var ndr: Bool?
        
        public var dangerousGoods: Bool?
        
        public var fragileGoods: Bool?
        
        public var restrictedGoods: Bool?
        
        public var coldStorageGoods: Bool?
        
        public var doorstepExchange: Bool?
        
        public var doorstepReturn: Bool?
        
        public var productInstallation: Bool?
        
        public var openboxDelivery: Bool?
        
        public var multiPickSingleDrop: Bool?
        
        public var singlePickMultiDrop: Bool?
        
        public var multiPickMultiDrop: Bool?
        
        public var ewaybill: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case doorstepQc = "doorstep_qc"
            
            case qr = "qr"
            
            case mps = "mps"
            
            case ndr = "ndr"
            
            case dangerousGoods = "dangerous_goods"
            
            case fragileGoods = "fragile_goods"
            
            case restrictedGoods = "restricted_goods"
            
            case coldStorageGoods = "cold_storage_goods"
            
            case doorstepExchange = "doorstep_exchange"
            
            case doorstepReturn = "doorstep_return"
            
            case productInstallation = "product_installation"
            
            case openboxDelivery = "openbox_delivery"
            
            case multiPickSingleDrop = "multi_pick_single_drop"
            
            case singlePickMultiDrop = "single_pick_multi_drop"
            
            case multiPickMultiDrop = "multi_pick_multi_drop"
            
            case ewaybill = "ewaybill"
            
        }

        public init(coldStorageGoods: Bool? = nil, dangerousGoods: Bool? = nil, doorstepExchange: Bool? = nil, doorstepQc: Bool? = nil, doorstepReturn: Bool? = nil, ewaybill: Bool? = nil, fragileGoods: Bool? = nil, mps: Bool? = nil, multiPickMultiDrop: Bool? = nil, multiPickSingleDrop: Bool? = nil, ndr: Bool? = nil, openboxDelivery: Bool? = nil, productInstallation: Bool? = nil, qr: Bool? = nil, restrictedGoods: Bool? = nil, singlePickMultiDrop: Bool? = nil) {
            
            self.doorstepQc = doorstepQc
            
            self.qr = qr
            
            self.mps = mps
            
            self.ndr = ndr
            
            self.dangerousGoods = dangerousGoods
            
            self.fragileGoods = fragileGoods
            
            self.restrictedGoods = restrictedGoods
            
            self.coldStorageGoods = coldStorageGoods
            
            self.doorstepExchange = doorstepExchange
            
            self.doorstepReturn = doorstepReturn
            
            self.productInstallation = productInstallation
            
            self.openboxDelivery = openboxDelivery
            
            self.multiPickSingleDrop = multiPickSingleDrop
            
            self.singlePickMultiDrop = singlePickMultiDrop
            
            self.multiPickMultiDrop = multiPickMultiDrop
            
            self.ewaybill = ewaybill
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    doorstepQc = try container.decode(Bool.self, forKey: .doorstepQc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qr = try container.decode(Bool.self, forKey: .qr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mps = try container.decode(Bool.self, forKey: .mps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ndr = try container.decode(Bool.self, forKey: .ndr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dangerousGoods = try container.decode(Bool.self, forKey: .dangerousGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fragileGoods = try container.decode(Bool.self, forKey: .fragileGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictedGoods = try container.decode(Bool.self, forKey: .restrictedGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coldStorageGoods = try container.decode(Bool.self, forKey: .coldStorageGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    doorstepExchange = try container.decode(Bool.self, forKey: .doorstepExchange)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    doorstepReturn = try container.decode(Bool.self, forKey: .doorstepReturn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productInstallation = try container.decode(Bool.self, forKey: .productInstallation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    openboxDelivery = try container.decode(Bool.self, forKey: .openboxDelivery)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiPickSingleDrop = try container.decode(Bool.self, forKey: .multiPickSingleDrop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    singlePickMultiDrop = try container.decode(Bool.self, forKey: .singlePickMultiDrop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiPickMultiDrop = try container.decode(Bool.self, forKey: .multiPickMultiDrop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewaybill = try container.decode(Bool.self, forKey: .ewaybill)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(doorstepQc, forKey: .doorstepQc)
            
            
            
            
            try? container.encodeIfPresent(qr, forKey: .qr)
            
            
            
            
            try? container.encodeIfPresent(mps, forKey: .mps)
            
            
            
            
            try? container.encodeIfPresent(ndr, forKey: .ndr)
            
            
            
            
            try? container.encodeIfPresent(dangerousGoods, forKey: .dangerousGoods)
            
            
            
            
            try? container.encodeIfPresent(fragileGoods, forKey: .fragileGoods)
            
            
            
            
            try? container.encodeIfPresent(restrictedGoods, forKey: .restrictedGoods)
            
            
            
            
            try? container.encodeIfPresent(coldStorageGoods, forKey: .coldStorageGoods)
            
            
            
            
            try? container.encodeIfPresent(doorstepExchange, forKey: .doorstepExchange)
            
            
            
            
            try? container.encodeIfPresent(doorstepReturn, forKey: .doorstepReturn)
            
            
            
            
            try? container.encodeIfPresent(productInstallation, forKey: .productInstallation)
            
            
            
            
            try? container.encodeIfPresent(openboxDelivery, forKey: .openboxDelivery)
            
            
            
            
            try? container.encodeIfPresent(multiPickSingleDrop, forKey: .multiPickSingleDrop)
            
            
            
            
            try? container.encodeIfPresent(singlePickMultiDrop, forKey: .singlePickMultiDrop)
            
            
            
            
            try? container.encodeIfPresent(multiPickMultiDrop, forKey: .multiPickMultiDrop)
            
            
            
            
            try? container.encodeIfPresent(ewaybill, forKey: .ewaybill)
            
            
        }
        
    }
}


