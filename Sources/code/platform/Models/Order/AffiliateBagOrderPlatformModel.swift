

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var quantity: Int

        public var storeId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var itemSize: String

        public var deliveryCharge: Double

        public var itemId: Int

        public var discount: Double

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var id: String

        public var companyId: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case sku

            case identifier

            case avlQty = "avl_qty"

            case quantity

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case discount

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.identifier = identifier

            self.avlQty = avlQty

            self.quantity = quantity

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.discount = discount

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

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
        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var quantity: Int

        public var storeId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var itemSize: String

        public var deliveryCharge: Double

        public var itemId: Int

        public var discount: Double

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var id: String

        public var companyId: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case sku

            case identifier

            case avlQty = "avl_qty"

            case quantity

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case discount

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.identifier = identifier

            self.avlQty = avlQty

            self.quantity = quantity

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.discount = discount

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
