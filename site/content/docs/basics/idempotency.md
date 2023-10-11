<h1 class=article-title>Idempotency</h1>

---

Some of our API operations support request idempotency, allowing you to call a sensitive operation multiple times and assume that its work will be done no more than once. You may use any string of up to 255 characters as an idempotency key.

The guarantee of idempotency is crucial when an API call has failed without a clear reason and a retry is due. For example, if creating a payment does not succeed due to a network error, you can safely retry creating the payment, passing the same idempotency key and assume the payment will occur no more than once, regardless of the number of calls.

Idempotency keys are guaranteed effective for 48 hours from the time they're used successfully. After this time window, they will be recycled and existing keys will therefore be treated as new. [^ 1]

!!! note
    Idempotency keys are not shared between different API operations, so you could potentially use the same idempotency key for different types of operations, although we do not recommended it.

    One exception here is debit card creation for which both physical card creation and virtual card creation are sharing the idempotency key.

[^ 1]: Idempotency documentation and behavior taken from Unit documentation: https://docs.unit.co/#intro-idempotency

