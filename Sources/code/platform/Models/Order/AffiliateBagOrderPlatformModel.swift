

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var itemSize: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var id: String

        public var amountPaid: Double

        public var avlQty: Int

        public var sku: String

        public var transferPrice: Int

        public var discount: Double

        public var priceEffective: Double

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var modifiedOn: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case identifier

            case storeId = "store_id"

            case id = "_id"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case sku

            case transferPrice = "transfer_price"

            case discount

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.identifier = identifier

            self.storeId = storeId

            self.id = id

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.sku = sku

            self.transferPrice = transferPrice

            self.discount = discount

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

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
        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var itemSize: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var id: String

        public var amountPaid: Double

        public var avlQty: Int

        public var sku: String

        public var transferPrice: Int

        public var discount: Double

        public var priceEffective: Double

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var modifiedOn: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case identifier

            case storeId = "store_id"

            case id = "_id"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case sku

            case transferPrice = "transfer_price"

            case discount

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.identifier = identifier

            self.storeId = storeId

            self.id = id

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.sku = sku

            self.transferPrice = transferPrice

            self.discount = discount

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
