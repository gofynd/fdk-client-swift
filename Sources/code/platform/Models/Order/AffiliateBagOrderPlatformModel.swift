

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var priceEffective: Double

        public var discount: Double

        public var avlQty: Int

        public var transferPrice: Int

        public var unitPrice: Double

        public var storeId: Int

        public var id: String

        public var amountPaid: Double

        public var sku: String

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case identifier

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case discount

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case id = "_id"

            case amountPaid = "amount_paid"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.identifier = identifier

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.discount = discount

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.id = id

            self.amountPaid = amountPaid

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

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
        public var quantity: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var priceEffective: Double

        public var discount: Double

        public var avlQty: Int

        public var transferPrice: Int

        public var unitPrice: Double

        public var storeId: Int

        public var id: String

        public var amountPaid: Double

        public var sku: String

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case identifier

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case discount

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case id = "_id"

            case amountPaid = "amount_paid"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.identifier = identifier

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.discount = discount

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.id = id

            self.amountPaid = amountPaid

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
