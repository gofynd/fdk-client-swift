

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var storeId: Int

        public var sku: String

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var itemId: Int

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var modifiedOn: String

        public var id: String

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var companyId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var discount: Double

        public var fyndStoreId: String

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case sku

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case id = "_id"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case discount

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case identifier

            case itemSize = "item_size"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.storeId = storeId

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.id = id

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.companyId = companyId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.itemSize = itemSize

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

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
        public var amountPaid: Double

        public var storeId: Int

        public var sku: String

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var itemId: Int

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var modifiedOn: String

        public var id: String

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var companyId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var discount: Double

        public var fyndStoreId: String

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case sku

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case id = "_id"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case discount

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case identifier

            case itemSize = "item_size"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.storeId = storeId

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.id = id

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.companyId = companyId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.itemSize = itemSize

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
