

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var id: String

        public var quantity: Int

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var hsnCodeId: String

        public var sku: String

        public var discount: Double

        public var companyId: Int

        public var itemId: Int

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var itemSize: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var transferPrice: Int

        public var avlQty: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case quantity

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case sku

            case discount

            case companyId = "company_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.id = id

            self.quantity = quantity

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.discount = discount

            self.companyId = companyId

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var id: String

        public var quantity: Int

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var hsnCodeId: String

        public var sku: String

        public var discount: Double

        public var companyId: Int

        public var itemId: Int

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var itemSize: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var transferPrice: Int

        public var avlQty: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case quantity

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case sku

            case discount

            case companyId = "company_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.id = id

            self.quantity = quantity

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.discount = discount

            self.companyId = companyId

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
