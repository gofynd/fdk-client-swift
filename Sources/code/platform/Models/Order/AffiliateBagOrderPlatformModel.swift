

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var unitPrice: Double

        public var priceMarked: Double

        public var sku: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var fyndStoreId: String

        public var transferPrice: Int

        public var companyId: Int

        public var id: String

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var itemSize: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var discount: Double

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case sku

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case avlQty = "avl_qty"

            case discount

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.avlQty = avlQty

            self.discount = discount

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
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

        public var unitPrice: Double

        public var priceMarked: Double

        public var sku: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var fyndStoreId: String

        public var transferPrice: Int

        public var companyId: Int

        public var id: String

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var itemSize: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var discount: Double

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case sku

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case avlQty = "avl_qty"

            case discount

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.avlQty = avlQty

            self.discount = discount

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
