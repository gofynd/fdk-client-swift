

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var discount: Double

        public var id: String

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var companyId: Int

        public var modifiedOn: String

        public var avlQty: Int

        public var priceMarked: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var unitPrice: Double

        public var fyndStoreId: String

        public var priceEffective: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var itemSize: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case discount

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case quantity

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case sku

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var discount: Double

        public var id: String

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var companyId: Int

        public var modifiedOn: String

        public var avlQty: Int

        public var priceMarked: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var unitPrice: Double

        public var fyndStoreId: String

        public var priceEffective: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var itemSize: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case discount

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case quantity

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case sku

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
