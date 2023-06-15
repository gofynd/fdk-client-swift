

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var transferPrice: Int

        public var storeId: Int

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var quantity: Int

        public var avlQty: Int

        public var companyId: Int

        public var itemSize: String

        public var hsnCodeId: String

        public var modifiedOn: String

        public var itemId: Int

        public var discount: Double

        public var id: String

        public var sku: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case priceMarked = "price_marked"

            case identifier

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case discount

            case id = "_id"

            case sku

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.avlQty = avlQty

            self.companyId = companyId

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.discount = discount

            self.id = id

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var transferPrice: Int

        public var storeId: Int

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var quantity: Int

        public var avlQty: Int

        public var companyId: Int

        public var itemSize: String

        public var hsnCodeId: String

        public var modifiedOn: String

        public var itemId: Int

        public var discount: Double

        public var id: String

        public var sku: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case priceMarked = "price_marked"

            case identifier

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case discount

            case id = "_id"

            case sku

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.avlQty = avlQty

            self.companyId = companyId

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.discount = discount

            self.id = id

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
