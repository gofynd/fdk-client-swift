

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var avlQty: Int

        public var transferPrice: Int

        public var discount: Double

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var unitPrice: Double

        public var hsnCodeId: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var id: String

        public var sellerIdentifier: String

        public var sku: String

        public var quantity: Int

        public var amountPaid: Double

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case discount

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case identifier

            case priceMarked = "price_marked"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case sku

            case quantity

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.discount = discount

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var avlQty: Int

        public var transferPrice: Int

        public var discount: Double

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var unitPrice: Double

        public var hsnCodeId: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var id: String

        public var sellerIdentifier: String

        public var sku: String

        public var quantity: Int

        public var amountPaid: Double

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case discount

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case identifier

            case priceMarked = "price_marked"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case sku

            case quantity

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.discount = discount

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
