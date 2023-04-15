

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var quantity: Int

        public var transferPrice: Int

        public var hsnCodeId: String

        public var discount: Double

        public var itemSize: String

        public var storeId: Int

        public var fyndStoreId: String

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var sku: String

        public var id: String

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var companyId: Int

        public var amountPaid: Double

        public var itemId: Int

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case quantity

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case discount

            case itemSize = "item_size"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case sku

            case id = "_id"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.itemSize = itemSize

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.id = id

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

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
        public var priceMarked: Double

        public var quantity: Int

        public var transferPrice: Int

        public var hsnCodeId: String

        public var discount: Double

        public var itemSize: String

        public var storeId: Int

        public var fyndStoreId: String

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var sku: String

        public var id: String

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var companyId: Int

        public var amountPaid: Double

        public var itemId: Int

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case quantity

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case discount

            case itemSize = "item_size"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case sku

            case id = "_id"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.itemSize = itemSize

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.id = id

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
