

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: Article
        Used By: Payment
    */
    class Article: Codable {
        
        public var set: [String: Any]?
        
        public var uid: String?
        
        public var cName: String?
        
        public var isSet: Bool?
        
        public var sCity: String?
        
        public var weight: Weight?
        
        public var avlQty: Int?
        
        public var fragile: Bool?
        
        public var itemId: Int?
        
        public var brandId: Int?
        
        public var cashback: Int?
        
        public var discount: Int?
        
        public var hsnCode: String?
        
        public var isValid: Bool?
        
        public var latitude: Double?
        
        public var quantity: Int?
        
        public var rawMeta: [String: Any]?
        
        public var storeId: Int?
        
        public var dimension: Dimension?
        
        public var itemSize: String?
        
        public var longitude: Double?
        
        public var oldPrice: Int?
        
        public var articleId: String?
        
        public var companyId: Int?
        
        public var gstAmount: Int?
        
        public var identifier: [String: Any]?
        
        public var storeName: String?
        
        public var unitPrice: Int?
        
        public var amountPaid: Int?
        
        public var bulkMargin: Int?
        
        public var codCharges: Int?
        
        public var customMeta: [String: Any]?
        
        public var articleCode: String?
        
        public var manufacturer: Manufacturer?
        
        public var priceMarked: Int?
        
        public var bulkDiscount: Int?
        
        public var storePincode: Int?
        
        public var valueOfGood: Int?
        
        public var lastUpdateAt: String?
        
        public var returnAllowed: Bool?
        
        public var transferPrice: Int?
        
        public var priceEffective: Int?
        
        public var validInventory: Bool?
        
        public var bulkCouponCode: String?
        
        public var cashbackApplied: Int?
        
        public var deliveryCharges: Int?
        
        public var mongoArticleId: String?
        
        public var referralCredits: Int?
        
        public var countryOfOrigin: String?
        
        public var articleAssignment: ArticleAssignment?
        
        public var gstTaxPercentage: Int?
        
        public var cancellationAllowed: Bool?
        
        public var couponArticleCount: Int?
        
        public var sizeLevelTotalQty: Int?
        
        public var articleAssignStatus: Bool?
        
        public var quantityAssignStatus: Bool?
        
        public var couponEffectiveDiscount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case set = "set"
            
            case uid = "uid"
            
            case cName = "c_name"
            
            case isSet = "is_set"
            
            case sCity = "s_city"
            
            case weight = "weight"
            
            case avlQty = "avl_qty"
            
            case fragile = "fragile"
            
            case itemId = "item_id"
            
            case brandId = "brand_id"
            
            case cashback = "cashback"
            
            case discount = "discount"
            
            case hsnCode = "hsn_code"
            
            case isValid = "is_valid"
            
            case latitude = "latitude"
            
            case quantity = "quantity"
            
            case rawMeta = "raw_meta"
            
            case storeId = "store_id"
            
            case dimension = "dimension"
            
            case itemSize = "item_size"
            
            case longitude = "longitude"
            
            case oldPrice = "old_price"
            
            case articleId = "article_id"
            
            case companyId = "company_id"
            
            case gstAmount = "gst_amount"
            
            case identifier = "identifier"
            
            case storeName = "store_name"
            
            case unitPrice = "unit_price"
            
            case amountPaid = "amount_paid"
            
            case bulkMargin = "bulk_margin"
            
            case codCharges = "cod_charges"
            
            case customMeta = "custom_meta"
            
            case articleCode = "article_code"
            
            case manufacturer = "manufacturer"
            
            case priceMarked = "price_marked"
            
            case bulkDiscount = "bulk_discount"
            
            case storePincode = "store_pincode"
            
            case valueOfGood = "value_of_good"
            
            case lastUpdateAt = "last_update_at"
            
            case returnAllowed = "return_allowed"
            
            case transferPrice = "transfer_price"
            
            case priceEffective = "price_effective"
            
            case validInventory = "valid_inventory"
            
            case bulkCouponCode = "bulk_coupon_code"
            
            case cashbackApplied = "cashback_applied"
            
            case deliveryCharges = "delivery_charges"
            
            case mongoArticleId = "mongo_article_id"
            
            case referralCredits = "referral_credits"
            
            case countryOfOrigin = "country_of_origin"
            
            case articleAssignment = "article_assignment"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case cancellationAllowed = "cancellation_allowed"
            
            case couponArticleCount = "coupon_article_count"
            
            case sizeLevelTotalQty = "size_level_total_qty"
            
            case articleAssignStatus = "article_assign_status"
            
            case quantityAssignStatus = "quantity_assign_status"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
        }

        public init(amountPaid: Int? = nil, articleAssignment: ArticleAssignment? = nil, articleAssignStatus: Bool? = nil, articleCode: String? = nil, articleId: String? = nil, avlQty: Int? = nil, brandId: Int? = nil, bulkCouponCode: String? = nil, bulkDiscount: Int? = nil, bulkMargin: Int? = nil, cancellationAllowed: Bool? = nil, cashback: Int? = nil, cashbackApplied: Int? = nil, codCharges: Int? = nil, companyId: Int? = nil, countryOfOrigin: String? = nil, couponArticleCount: Int? = nil, couponEffectiveDiscount: Int? = nil, customMeta: [String: Any]? = nil, cName: String? = nil, deliveryCharges: Int? = nil, dimension: Dimension? = nil, discount: Int? = nil, fragile: Bool? = nil, gstAmount: Int? = nil, gstTaxPercentage: Int? = nil, hsnCode: String? = nil, identifier: [String: Any]? = nil, isSet: Bool? = nil, isValid: Bool? = nil, itemId: Int? = nil, itemSize: String? = nil, lastUpdateAt: String? = nil, latitude: Double? = nil, longitude: Double? = nil, manufacturer: Manufacturer? = nil, mongoArticleId: String? = nil, oldPrice: Int? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int? = nil, quantityAssignStatus: Bool? = nil, rawMeta: [String: Any]? = nil, referralCredits: Int? = nil, returnAllowed: Bool? = nil, set: [String: Any]? = nil, sizeLevelTotalQty: Int? = nil, storeId: Int? = nil, storeName: String? = nil, storePincode: Int? = nil, sCity: String? = nil, transferPrice: Int? = nil, uid: String? = nil, unitPrice: Int? = nil, validInventory: Bool? = nil, valueOfGood: Int? = nil, weight: Weight? = nil) {
            
            self.set = set
            
            self.uid = uid
            
            self.cName = cName
            
            self.isSet = isSet
            
            self.sCity = sCity
            
            self.weight = weight
            
            self.avlQty = avlQty
            
            self.fragile = fragile
            
            self.itemId = itemId
            
            self.brandId = brandId
            
            self.cashback = cashback
            
            self.discount = discount
            
            self.hsnCode = hsnCode
            
            self.isValid = isValid
            
            self.latitude = latitude
            
            self.quantity = quantity
            
            self.rawMeta = rawMeta
            
            self.storeId = storeId
            
            self.dimension = dimension
            
            self.itemSize = itemSize
            
            self.longitude = longitude
            
            self.oldPrice = oldPrice
            
            self.articleId = articleId
            
            self.companyId = companyId
            
            self.gstAmount = gstAmount
            
            self.identifier = identifier
            
            self.storeName = storeName
            
            self.unitPrice = unitPrice
            
            self.amountPaid = amountPaid
            
            self.bulkMargin = bulkMargin
            
            self.codCharges = codCharges
            
            self.customMeta = customMeta
            
            self.articleCode = articleCode
            
            self.manufacturer = manufacturer
            
            self.priceMarked = priceMarked
            
            self.bulkDiscount = bulkDiscount
            
            self.storePincode = storePincode
            
            self.valueOfGood = valueOfGood
            
            self.lastUpdateAt = lastUpdateAt
            
            self.returnAllowed = returnAllowed
            
            self.transferPrice = transferPrice
            
            self.priceEffective = priceEffective
            
            self.validInventory = validInventory
            
            self.bulkCouponCode = bulkCouponCode
            
            self.cashbackApplied = cashbackApplied
            
            self.deliveryCharges = deliveryCharges
            
            self.mongoArticleId = mongoArticleId
            
            self.referralCredits = referralCredits
            
            self.countryOfOrigin = countryOfOrigin
            
            self.articleAssignment = articleAssignment
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.cancellationAllowed = cancellationAllowed
            
            self.couponArticleCount = couponArticleCount
            
            self.sizeLevelTotalQty = sizeLevelTotalQty
            
            self.articleAssignStatus = articleAssignStatus
            
            self.quantityAssignStatus = quantityAssignStatus
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                set = try container.decode([String: Any].self, forKey: .set)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                uid = try container.decode(String.self, forKey: .uid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cName = try container.decode(String.self, forKey: .cName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sCity = try container.decode(String.self, forKey: .sCity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                weight = try container.decode(Weight.self, forKey: .weight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                avlQty = try container.decode(Int.self, forKey: .avlQty)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fragile = try container.decode(Bool.self, forKey: .fragile)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemId = try container.decode(Int.self, forKey: .itemId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                brandId = try container.decode(Int.self, forKey: .brandId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cashback = try container.decode(Int.self, forKey: .cashback)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discount = try container.decode(Int.self, forKey: .discount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                latitude = try container.decode(Double.self, forKey: .latitude)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantity = try container.decode(Int.self, forKey: .quantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeId = try container.decode(Int.self, forKey: .storeId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dimension = try container.decode(Dimension.self, forKey: .dimension)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemSize = try container.decode(String.self, forKey: .itemSize)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                longitude = try container.decode(Double.self, forKey: .longitude)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                oldPrice = try container.decode(Int.self, forKey: .oldPrice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articleId = try container.decode(String.self, forKey: .articleId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                companyId = try container.decode(Int.self, forKey: .companyId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                gstAmount = try container.decode(Int.self, forKey: .gstAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeName = try container.decode(String.self, forKey: .storeName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                unitPrice = try container.decode(Int.self, forKey: .unitPrice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                amountPaid = try container.decode(Int.self, forKey: .amountPaid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bulkMargin = try container.decode(Int.self, forKey: .bulkMargin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customMeta = try container.decode([String: Any].self, forKey: .customMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articleCode = try container.decode(String.self, forKey: .articleCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                manufacturer = try container.decode(Manufacturer.self, forKey: .manufacturer)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                priceMarked = try container.decode(Int.self, forKey: .priceMarked)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bulkDiscount = try container.decode(Int.self, forKey: .bulkDiscount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storePincode = try container.decode(Int.self, forKey: .storePincode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                lastUpdateAt = try container.decode(String.self, forKey: .lastUpdateAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                transferPrice = try container.decode(Int.self, forKey: .transferPrice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                validInventory = try container.decode(Bool.self, forKey: .validInventory)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bulkCouponCode = try container.decode(String.self, forKey: .bulkCouponCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryCharges = try container.decode(Int.self, forKey: .deliveryCharges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mongoArticleId = try container.decode(String.self, forKey: .mongoArticleId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                referralCredits = try container.decode(Int.self, forKey: .referralCredits)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                couponArticleCount = try container.decode(Int.self, forKey: .couponArticleCount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sizeLevelTotalQty = try container.decode(Int.self, forKey: .sizeLevelTotalQty)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articleAssignStatus = try container.decode(Bool.self, forKey: .articleAssignStatus)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantityAssignStatus = try container.decode(Bool.self, forKey: .quantityAssignStatus)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(cName, forKey: .cName)
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            try? container.encodeIfPresent(sCity, forKey: .sCity)
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
            
            
            
            try? container.encodeIfPresent(fragile, forKey: .fragile)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            try? container.encodeIfPresent(oldPrice, forKey: .oldPrice)
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(gstAmount, forKey: .gstAmount)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            try? container.encodeIfPresent(bulkMargin, forKey: .bulkMargin)
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            try? container.encodeIfPresent(articleCode, forKey: .articleCode)
            
            
            
            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            try? container.encodeIfPresent(bulkDiscount, forKey: .bulkDiscount)
            
            
            
            try? container.encodeIfPresent(storePincode, forKey: .storePincode)
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            try? container.encodeIfPresent(lastUpdateAt, forKey: .lastUpdateAt)
            
            
            
            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            try? container.encodeIfPresent(validInventory, forKey: .validInventory)
            
            
            
            try? container.encodeIfPresent(bulkCouponCode, forKey: .bulkCouponCode)
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            try? container.encodeIfPresent(mongoArticleId, forKey: .mongoArticleId)
            
            
            
            try? container.encodeIfPresent(referralCredits, forKey: .referralCredits)
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
            
            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)
            
            
            
            try? container.encodeIfPresent(couponArticleCount, forKey: .couponArticleCount)
            
            
            
            try? container.encodeIfPresent(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)
            
            
            
            try? container.encodeIfPresent(articleAssignStatus, forKey: .articleAssignStatus)
            
            
            
            try? container.encodeIfPresent(quantityAssignStatus, forKey: .quantityAssignStatus)
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
        }
        
    }
}
