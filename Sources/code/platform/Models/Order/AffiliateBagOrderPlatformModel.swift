

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var discount: Double

        public var sellerIdentifier: String

        public var storeId: Int

        public var identifier: [String: Any]

        public var quantity: Int

        public var transferPrice: Int

        public var unitPrice: Double

        public var hsnCodeId: String

        public var sku: String

        public var id: String

        public var itemId: Int

        public var fyndStoreId: String

        public var itemSize: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var avlQty: Int

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case discount

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case identifier

            case quantity

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case sku

            case id = "_id"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.identifier = identifier

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.id = id

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var discount: Double

        public var sellerIdentifier: String

        public var storeId: Int

        public var identifier: [String: Any]

        public var quantity: Int

        public var transferPrice: Int

        public var unitPrice: Double

        public var hsnCodeId: String

        public var sku: String

        public var id: String

        public var itemId: Int

        public var fyndStoreId: String

        public var itemSize: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var avlQty: Int

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case discount

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case identifier

            case quantity

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case sku

            case id = "_id"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.identifier = identifier

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.id = id

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
