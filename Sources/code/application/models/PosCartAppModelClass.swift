import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: UpdateCartShipmentItem
            Used By: PosCart
        */
        class UpdateCartShipmentItem: Codable {
            
            public var quantity: Int?
            
            public var shipmentType: String
            
            public var articleUid: String
            

            public enum CodingKeys: String, CodingKey {
                
                case quantity = "quantity"
                
                case shipmentType = "shipment_type"
                
                case articleUid = "article_uid"
                
            }

            public init(articleUid: String, quantity: Int?, shipmentType: String) {
                
                self.quantity = quantity
                
                self.shipmentType = shipmentType
                
                self.articleUid = articleUid
                
            }

            public func duplicate() -> UpdateCartShipmentItem {
                let dict = self.dictionary!
                let copy = UpdateCartShipmentItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                shipmentType = try container.decode(String.self, forKey: .shipmentType)
                
                
                
                
                articleUid = try container.decode(String.self, forKey: .articleUid)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                
                
                
                try? container.encodeIfPresent(articleUid, forKey: .articleUid)
                
                
            }
            
        }
        
        /*
            Model: UpdateCartShipmentRequest
            Used By: PosCart
        */
        class UpdateCartShipmentRequest: Codable {
            
            public var shipments: [UpdateCartShipmentItem]
            

            public enum CodingKeys: String, CodingKey {
                
                case shipments = "shipments"
                
            }

            public init(shipments: [UpdateCartShipmentItem]) {
                
                self.shipments = shipments
                
            }

            public func duplicate() -> UpdateCartShipmentRequest {
                let dict = self.dictionary!
                let copy = UpdateCartShipmentRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                shipments = try container.decode([UpdateCartShipmentItem].self, forKey: .shipments)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                
            }
            
        }
        
        /*
            Model: Files
            Used By: PosCart
        */
        class Files: Codable {
            
            public var key: String
            
            public var values: [String]
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case values = "values"
                
            }

            public init(key: String, values: [String]) {
                
                self.key = key
                
                self.values = values
                
            }

            public func duplicate() -> Files {
                let dict = self.dictionary!
                let copy = Files(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                
                values = try container.decode([String].self, forKey: .values)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(values, forKey: .values)
                
                
            }
            
        }
        
        /*
            Model: CartPosCheckoutDetailRequest
            Used By: PosCart
        */
        class CartPosCheckoutDetailRequest: Codable {
            
            public var pickAtStoreUid: Int?
            
            public var deliveryAddress: [String: Any]?
            
            public var files: [Files]?
            
            public var addressId: String?
            
            public var orderType: String
            
            public var meta: [String: Any]?
            
            public var billingAddress: [String: Any]?
            
            public var orderingStore: Int?
            
            public var callbackUrl: String?
            
            public var paymentMode: String
            
            public var paymentAutoConfirm: Bool?
            
            public var merchantCode: String?
            
            public var aggregator: String?
            
            public var pos: Bool?
            
            public var staff: StaffCheckout?
            
            public var extraMeta: [String: Any]?
            
            public var billingAddressId: String?
            
            public var paymentParams: [String: Any]?
            
            public var paymentIdentifier: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pickAtStoreUid = "pick_at_store_uid"
                
                case deliveryAddress = "delivery_address"
                
                case files = "files"
                
                case addressId = "address_id"
                
                case orderType = "order_type"
                
                case meta = "meta"
                
                case billingAddress = "billing_address"
                
                case orderingStore = "ordering_store"
                
                case callbackUrl = "callback_url"
                
                case paymentMode = "payment_mode"
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case merchantCode = "merchant_code"
                
                case aggregator = "aggregator"
                
                case pos = "pos"
                
                case staff = "staff"
                
                case extraMeta = "extra_meta"
                
                case billingAddressId = "billing_address_id"
                
                case paymentParams = "payment_params"
                
                case paymentIdentifier = "payment_identifier"
                
            }

            public init(addressId: String?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: String?, callbackUrl: String?, deliveryAddress: [String: Any]?, extraMeta: [String: Any]?, files: [Files]?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, orderType: String, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, pickAtStoreUid: Int?, pos: Bool?, staff: StaffCheckout?) {
                
                self.pickAtStoreUid = pickAtStoreUid
                
                self.deliveryAddress = deliveryAddress
                
                self.files = files
                
                self.addressId = addressId
                
                self.orderType = orderType
                
                self.meta = meta
                
                self.billingAddress = billingAddress
                
                self.orderingStore = orderingStore
                
                self.callbackUrl = callbackUrl
                
                self.paymentMode = paymentMode
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.merchantCode = merchantCode
                
                self.aggregator = aggregator
                
                self.pos = pos
                
                self.staff = staff
                
                self.extraMeta = extraMeta
                
                self.billingAddressId = billingAddressId
                
                self.paymentParams = paymentParams
                
                self.paymentIdentifier = paymentIdentifier
                
            }

            public func duplicate() -> CartPosCheckoutDetailRequest {
                let dict = self.dictionary!
                let copy = CartPosCheckoutDetailRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    pickAtStoreUid = try container.decode(Int.self, forKey: .pickAtStoreUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    files = try container.decode([Files].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(String.self, forKey: .addressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderType = try container.decode(String.self, forKey: .orderType)
                
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderingStore = try container.decode(Int.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                
                
                
                do {
                    paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pos = try container.decode(Bool.self, forKey: .pos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    staff = try container.decode(StaffCheckout.self, forKey: .staff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddressId = try container.decode(String.self, forKey: .billingAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)
                
                
                
                
                try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
                
                
                
                
                try? container.encodeIfPresent(files, forKey: .files)
                
                
                
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                
                
                
                try? container.encodeIfPresent(orderType, forKey: .orderType)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                
                
                
                try? container.encode(orderingStore, forKey: .orderingStore)
                
                
                
                
                try? container.encode(callbackUrl, forKey: .callbackUrl)
                
                
                
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                
                
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                
                
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
                
                
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                
                
                
                try? container.encode(paymentParams, forKey: .paymentParams)
                
                
                
                
                try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
                
                
            }
            
        }
        
        /*
            Model: CartDeliveryModesResponse
            Used By: PosCart
        */
        class CartDeliveryModesResponse: Codable {
            
            public var pickupStores: [Int]?
            
            public var availableModes: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case pickupStores = "pickup_stores"
                
                case availableModes = "available_modes"
                
            }

            public init(availableModes: [String]?, pickupStores: [Int]?) {
                
                self.pickupStores = pickupStores
                
                self.availableModes = availableModes
                
            }

            public func duplicate() -> CartDeliveryModesResponse {
                let dict = self.dictionary!
                let copy = CartDeliveryModesResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    pickupStores = try container.decode([Int].self, forKey: .pickupStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    availableModes = try container.decode([String].self, forKey: .availableModes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(pickupStores, forKey: .pickupStores)
                
                
                
                
                try? container.encodeIfPresent(availableModes, forKey: .availableModes)
                
                
            }
            
        }
        
        /*
            Model: PickupStoreDetail
            Used By: PosCart
        */
        class PickupStoreDetail: Codable {
            
            public var areaCode: String?
            
            public var landmark: String?
            
            public var areaCodeSlug: String?
            
            public var country: String?
            
            public var storeCode: String?
            
            public var id: Int?
            
            public var area: String?
            
            public var city: String?
            
            public var phone: String?
            
            public var addressType: String?
            
            public var uid: Int?
            
            public var state: String?
            
            public var email: String?
            
            public var pincode: Int?
            
            public var address: String?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case areaCode = "area_code"
                
                case landmark = "landmark"
                
                case areaCodeSlug = "area_code_slug"
                
                case country = "country"
                
                case storeCode = "store_code"
                
                case id = "id"
                
                case area = "area"
                
                case city = "city"
                
                case phone = "phone"
                
                case addressType = "address_type"
                
                case uid = "uid"
                
                case state = "state"
                
                case email = "email"
                
                case pincode = "pincode"
                
                case address = "address"
                
                case name = "name"
                
            }

            public init(address: String?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, city: String?, country: String?, email: String?, id: Int?, landmark: String?, name: String?, phone: String?, pincode: Int?, state: String?, storeCode: String?, uid: Int?) {
                
                self.areaCode = areaCode
                
                self.landmark = landmark
                
                self.areaCodeSlug = areaCodeSlug
                
                self.country = country
                
                self.storeCode = storeCode
                
                self.id = id
                
                self.area = area
                
                self.city = city
                
                self.phone = phone
                
                self.addressType = addressType
                
                self.uid = uid
                
                self.state = state
                
                self.email = email
                
                self.pincode = pincode
                
                self.address = address
                
                self.name = name
                
            }

            public func duplicate() -> PickupStoreDetail {
                let dict = self.dictionary!
                let copy = PickupStoreDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    areaCode = try container.decode(String.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
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
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
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
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                
                
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                
                
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: StoreDetailsResponse
            Used By: PosCart
        */
        class StoreDetailsResponse: Codable {
            
            public var items: [PickupStoreDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [PickupStoreDetail]?) {
                
                self.items = items
                
            }

            public func duplicate() -> StoreDetailsResponse {
                let dict = self.dictionary!
                let copy = StoreDetailsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([PickupStoreDetail].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
}
